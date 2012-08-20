
#define USE_ASSERT_CHECKING

#include "postgres.h"
#include "utils/array.h" 
#include "utils/lsyscache.h" 
#include "fmgr.h"
#include "access/heapam.h"
#include "funcapi.h"
#include "catalog/pg_type.h"

#include "kiss_fft.h"
#include "kiss_fft.c"

/**********************************************************************
 * sfunc( internal-state, next-data-values ) ---> next-internal-state *
 * ffunc( internal-state ) ---> aggregate-value                       *
 **********************************************************************/

#ifdef PG_MODULE_MAGIC
PG_MODULE_MAGIC;
#endif

Datum fft_agg_finalfn(PG_FUNCTION_ARGS);

PG_FUNCTION_INFO_V1(fft_agg_finalfn);

Datum fft_agg_finalfn(PG_FUNCTION_ARGS)
{
	ArrayType *input, *result = NULL;
	Oid        eltype;
	int16      typlen;
	bool       typbyval;
	char       typalign;
	Datum     *data;
	int        i, n;
	int        ndims, *dims;
  kiss_fft_cfg cfg;
  kiss_fft_cpx *cx_in = NULL, *cx_out = NULL;

	if (!AggCheckCallContext(fcinfo, NULL)) 
		elog(ERROR, "fft_agg_finalfn() Not aggregate context");

	if (PG_ARGISNULL(0))
		elog(ERROR, "fft_agg_finalfn() args cannot be null");

	/* elog(INFO, "fft_agg_finalfn() nargs: %d", PG_NARGS()); */
	/* elog(INFO, "p1 %p", PG_GETARG_POINTER(0)); */

	/* state array */
	input = PG_GETARG_ARRAYTYPE_P(0);

	/* elog(INFO, "arg 0 array type: 0x%p", input); */

	/* get various pieces of data from the input array */
	ndims  = ARR_NDIM(input);
	dims   = ARR_DIMS(input);
	eltype = ARR_ELEMTYPE(input);
	/* elog(INFO, "input dim: %d hasnull: %d elemtype: %d", ndims, *dims, eltype); */

  Assert(ndims == 1);
	Assert(eltype == FLOAT4OID);

	/* get input array element type */
	get_typlenbyvalalign(eltype, &typlen, &typbyval, &typalign);
  /* elog(INFO, "olen: %d obyval: %d align: %d", typlen, typbyval, typalign); */

	/* get src data */
	deconstruct_array(input, eltype, typlen, typbyval, typalign, &data, NULL, &n);
  /* elog(INFO, "idata: %p n: %d", data, n); */

	Assert(*dims == n);

	cx_in  = palloc0(*dims * sizeof(kiss_fft_cpx));
	cx_out = palloc0(*dims * sizeof(kiss_fft_cpx));

	/* apply scale */
	for (i=0; i<*dims; i++) 
	    cx_in[i].r = DatumGetFloat4(data[i]);

  if ((cfg = kiss_fft_alloc(*dims, 0, 0, 0)) == NULL)
		elog(ERROR, "kiss_fft_alloc() failed");

  kiss_fft(cfg, cx_in, cx_out);

	for (i=0; i<*dims; i++) {
    data[i] = (cx_out[i].r * cx_out[i].r + cx_out[i].i * cx_out[i].i) / (double)*dims;
    /*
    printf("%23.15e  %23.15e\n", freq / (double)n * (double)i,
		    (cx_out[i].r * cx_out[i].r + cx_out[i].i * cx_out[i].i) / (double)n);
    */
	}

  /*
  elog(INFO, "odata: %p dims: %d otype: %d olen: %d obyval: %d align: %d",
      data, *dims, eltype, typlen, typbyval, typalign);
  */

	result = construct_array((void *)data, *dims, eltype, typlen, typbyval, typalign);

  free(cfg);

	pfree(data);
	pfree(cx_in);
	pfree(cx_out);

	PG_RETURN_ARRAYTYPE_P(result);
}





