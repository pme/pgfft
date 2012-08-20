\set path `pwd`/src:/$libdir
SET dynamic_library_path TO :'path';

SET client_min_messages TO DEBUG;

CREATE OR REPLACE FUNCTION fft_agg_finalfn(real[])
 	RETURNS real[]
 	AS 'kissfft'
 	LANGUAGE C;


CREATE AGGREGATE fft_agg(real) (
	SFUNC     = array_append,
	FINALFUNC = fft_agg_finalfn,
	STYPE     = real[],
  INITCOND  = '{}'
	);

CREATE OR REPLACE FUNCTION fft(a REAL[], freq REAL) RETURNS REAL[] AS $$
DECLARE
  n INTEGER := 0;
  l INTEGER;
  e REAL;
  r REAL[];
  f REAL;
BEGIN
 
  l = array_length(a, 1);

  FOREACH e IN ARRAY a
  LOOP
    f := freq / l * n;
    RAISE DEBUG 'record % % -> %', n, f, e;
    r := array_cat(r, ARRAY[[f,e]]);
    n := n + 1;
  END LOOP;

  RETURN r;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION fft_print(a REAL[]) RETURNS VOID AS $$
DECLARE
  e REAL[];
BEGIN
  FOREACH e SLICE 1 IN ARRAY a
  LOOP
    RAISE INFO '%', e;
  END LOOP;
END;
$$ LANGUAGE plpgsql;
