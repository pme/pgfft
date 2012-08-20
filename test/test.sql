\set pager

BEGIN;

\set path `pwd`/src:/$libdir
SET dynamic_library_path TO :'path';

SET client_min_messages TO DEBUG;

CREATE TABLE fft_test (
  r real
);

INSERT INTO fft_test VALUES (+2.668588);
INSERT INTO fft_test VALUES (+0.898261);
INSERT INTO fft_test VALUES (+4.153431);
INSERT INTO fft_test VALUES (-1.086270);
INSERT INTO fft_test VALUES (+0.644925);
INSERT INTO fft_test VALUES (-0.255688);
INSERT INTO fft_test VALUES (-2.061471);
INSERT INTO fft_test VALUES (+1.083685);
INSERT INTO fft_test VALUES (-3.229606);
INSERT INTO fft_test VALUES (-0.140990);
INSERT INTO fft_test VALUES (+2.004573);
INSERT INTO fft_test VALUES (+0.211783);
INSERT INTO fft_test VALUES (-1.808748);
INSERT INTO fft_test VALUES (-1.679961);
INSERT INTO fft_test VALUES (+0.733595);
INSERT INTO fft_test VALUES (-3.262756);
INSERT INTO fft_test VALUES (-0.555041);
INSERT INTO fft_test VALUES (+0.353268);
INSERT INTO fft_test VALUES (+1.369963);
INSERT INTO fft_test VALUES (-3.527699);
INSERT INTO fft_test VALUES (+0.376146);
INSERT INTO fft_test VALUES (+1.917630);
INSERT INTO fft_test VALUES (-0.315155);
INSERT INTO fft_test VALUES (+1.038389);
INSERT INTO fft_test VALUES (+1.144289);
INSERT INTO fft_test VALUES (+2.022601);
INSERT INTO fft_test VALUES (+0.809637);
INSERT INTO fft_test VALUES (+1.266484);
INSERT INTO fft_test VALUES (+0.752015);
INSERT INTO fft_test VALUES (-0.014009);
INSERT INTO fft_test VALUES (-1.628740);
INSERT INTO fft_test VALUES (-1.319630);
INSERT INTO fft_test VALUES (-5.341396);
INSERT INTO fft_test VALUES (-1.444602);
INSERT INTO fft_test VALUES (+1.677612);
INSERT INTO fft_test VALUES (+2.577660);
INSERT INTO fft_test VALUES (-0.842789);
INSERT INTO fft_test VALUES (-2.638458);
INSERT INTO fft_test VALUES (+0.686394);
INSERT INTO fft_test VALUES (+1.684938);
INSERT INTO fft_test VALUES (-0.833383);
INSERT INTO fft_test VALUES (+0.819111);
INSERT INTO fft_test VALUES (-1.543879);
INSERT INTO fft_test VALUES (+1.803542);
INSERT INTO fft_test VALUES (+2.391189);
INSERT INTO fft_test VALUES (+3.300205);
INSERT INTO fft_test VALUES (+2.664175);
INSERT INTO fft_test VALUES (+4.212222);
INSERT INTO fft_test VALUES (-0.100444);
INSERT INTO fft_test VALUES (+0.788061);
INSERT INTO fft_test VALUES (-2.296764);
INSERT INTO fft_test VALUES (-0.401103);
INSERT INTO fft_test VALUES (+1.707805);
INSERT INTO fft_test VALUES (+0.030372);
INSERT INTO fft_test VALUES (-2.038900);
INSERT INTO fft_test VALUES (-6.837644);
INSERT INTO fft_test VALUES (-1.700453);
INSERT INTO fft_test VALUES (-2.056841);
INSERT INTO fft_test VALUES (-2.300685);
INSERT INTO fft_test VALUES (+2.234909);
INSERT INTO fft_test VALUES (-1.992664);
INSERT INTO fft_test VALUES (-2.222391);
INSERT INTO fft_test VALUES (+0.832683);
INSERT INTO fft_test VALUES (+2.568828);
INSERT INTO fft_test VALUES (+2.834491);
INSERT INTO fft_test VALUES (-2.807272);
INSERT INTO fft_test VALUES (+1.911723);
INSERT INTO fft_test VALUES (+0.798987);
INSERT INTO fft_test VALUES (+0.641812);
INSERT INTO fft_test VALUES (+0.584801);
INSERT INTO fft_test VALUES (-0.276505);
INSERT INTO fft_test VALUES (-1.167317);
INSERT INTO fft_test VALUES (+0.631522);
INSERT INTO fft_test VALUES (-1.685492);
INSERT INTO fft_test VALUES (-3.884199);
INSERT INTO fft_test VALUES (+0.185906);
INSERT INTO fft_test VALUES (-1.285734);
INSERT INTO fft_test VALUES (+0.603938);
INSERT INTO fft_test VALUES (-0.443888);
INSERT INTO fft_test VALUES (+0.473798);
INSERT INTO fft_test VALUES (+0.809647);
INSERT INTO fft_test VALUES (-2.130302);
INSERT INTO fft_test VALUES (-0.989940);
INSERT INTO fft_test VALUES (-2.119665);
INSERT INTO fft_test VALUES (+1.033996);
INSERT INTO fft_test VALUES (-0.091321);
INSERT INTO fft_test VALUES (+1.838314);
INSERT INTO fft_test VALUES (-1.277096);
INSERT INTO fft_test VALUES (+1.426177);
INSERT INTO fft_test VALUES (-0.087187);
INSERT INTO fft_test VALUES (-2.554939);
INSERT INTO fft_test VALUES (+1.579961);
INSERT INTO fft_test VALUES (-3.110042);
INSERT INTO fft_test VALUES (-0.172334);
INSERT INTO fft_test VALUES (+0.426377);
INSERT INTO fft_test VALUES (-0.094857);
INSERT INTO fft_test VALUES (+2.917504);
INSERT INTO fft_test VALUES (-4.826364);
INSERT INTO fft_test VALUES (-1.648609);
INSERT INTO fft_test VALUES (-2.664463);
INSERT INTO fft_test VALUES (+2.522923);
INSERT INTO fft_test VALUES (+4.749432);
INSERT INTO fft_test VALUES (-1.217653);
INSERT INTO fft_test VALUES (-2.384900);
INSERT INTO fft_test VALUES (+0.196279);
INSERT INTO fft_test VALUES (+1.760397);
INSERT INTO fft_test VALUES (+0.486203);
INSERT INTO fft_test VALUES (+0.531654);
INSERT INTO fft_test VALUES (+1.211080);
INSERT INTO fft_test VALUES (+0.722645);
INSERT INTO fft_test VALUES (-0.155350);
INSERT INTO fft_test VALUES (-0.267599);
INSERT INTO fft_test VALUES (+1.567017);
INSERT INTO fft_test VALUES (-2.615812);
INSERT INTO fft_test VALUES (-2.163774);
INSERT INTO fft_test VALUES (-7.340869);
INSERT INTO fft_test VALUES (-4.150261);
INSERT INTO fft_test VALUES (-3.472007);
INSERT INTO fft_test VALUES (-1.402614);
INSERT INTO fft_test VALUES (-0.045911);
INSERT INTO fft_test VALUES (+1.340672);
INSERT INTO fft_test VALUES (+2.055399);
INSERT INTO fft_test VALUES (-1.484805);
INSERT INTO fft_test VALUES (-2.120917);
INSERT INTO fft_test VALUES (-1.812715);
INSERT INTO fft_test VALUES (+2.270882);
INSERT INTO fft_test VALUES (+2.457727);
INSERT INTO fft_test VALUES (-1.832528);
INSERT INTO fft_test VALUES (+0.062746);
INSERT INTO fft_test VALUES (+7.575877);
INSERT INTO fft_test VALUES (+0.275084);
INSERT INTO fft_test VALUES (-5.572146);
INSERT INTO fft_test VALUES (+0.879526);
INSERT INTO fft_test VALUES (-2.504978);
INSERT INTO fft_test VALUES (+3.319322);
INSERT INTO fft_test VALUES (+2.614242);
INSERT INTO fft_test VALUES (+3.235460);
INSERT INTO fft_test VALUES (-0.496976);
INSERT INTO fft_test VALUES (+0.716498);
INSERT INTO fft_test VALUES (-1.460886);
INSERT INTO fft_test VALUES (+1.243105);
INSERT INTO fft_test VALUES (-0.232208);
INSERT INTO fft_test VALUES (-2.910344);
INSERT INTO fft_test VALUES (+1.845864);
INSERT INTO fft_test VALUES (+0.696038);
INSERT INTO fft_test VALUES (+0.634913);
INSERT INTO fft_test VALUES (+1.317600);
INSERT INTO fft_test VALUES (-0.793139);
INSERT INTO fft_test VALUES (-1.377359);
INSERT INTO fft_test VALUES (+2.061167);
INSERT INTO fft_test VALUES (-2.159202);
INSERT INTO fft_test VALUES (-4.480630);
INSERT INTO fft_test VALUES (+2.813134);
INSERT INTO fft_test VALUES (+2.016375);
INSERT INTO fft_test VALUES (-0.880573);
INSERT INTO fft_test VALUES (-5.259833);
INSERT INTO fft_test VALUES (-3.747755);
INSERT INTO fft_test VALUES (-3.395434);
INSERT INTO fft_test VALUES (-1.341026);
INSERT INTO fft_test VALUES (-4.290157);
INSERT INTO fft_test VALUES (-1.618028);
INSERT INTO fft_test VALUES (+2.416837);
INSERT INTO fft_test VALUES (+3.905468);
INSERT INTO fft_test VALUES (+1.109660);
INSERT INTO fft_test VALUES (-0.226490);
INSERT INTO fft_test VALUES (-1.741197);
INSERT INTO fft_test VALUES (+2.312410);
INSERT INTO fft_test VALUES (+3.063351);
INSERT INTO fft_test VALUES (+0.132807);
INSERT INTO fft_test VALUES (+0.603584);
INSERT INTO fft_test VALUES (+1.994825);
INSERT INTO fft_test VALUES (-2.865154);
INSERT INTO fft_test VALUES (-1.427893);
INSERT INTO fft_test VALUES (-4.588789);
INSERT INTO fft_test VALUES (-4.424569);
INSERT INTO fft_test VALUES (-1.258788);
INSERT INTO fft_test VALUES (+0.733298);
INSERT INTO fft_test VALUES (+0.086672);
INSERT INTO fft_test VALUES (-1.265710);
INSERT INTO fft_test VALUES (+0.188513);
INSERT INTO fft_test VALUES (+2.813541);
INSERT INTO fft_test VALUES (+1.342811);
INSERT INTO fft_test VALUES (-0.953226);
INSERT INTO fft_test VALUES (+0.155654);
INSERT INTO fft_test VALUES (-0.553106);
INSERT INTO fft_test VALUES (-0.615378);
INSERT INTO fft_test VALUES (+4.808662);
INSERT INTO fft_test VALUES (+2.741874);
INSERT INTO fft_test VALUES (+0.092709);
INSERT INTO fft_test VALUES (-1.608703);
INSERT INTO fft_test VALUES (-0.418402);
INSERT INTO fft_test VALUES (-2.453945);
INSERT INTO fft_test VALUES (-2.390645);
INSERT INTO fft_test VALUES (-2.189150);
INSERT INTO fft_test VALUES (+0.207175);
INSERT INTO fft_test VALUES (-5.298748);
INSERT INTO fft_test VALUES (+0.577805);
INSERT INTO fft_test VALUES (-1.413894);
INSERT INTO fft_test VALUES (-2.577417);
INSERT INTO fft_test VALUES (-2.927880);
INSERT INTO fft_test VALUES (-0.195969);
INSERT INTO fft_test VALUES (+1.731709);
INSERT INTO fft_test VALUES (+1.683886);
INSERT INTO fft_test VALUES (+1.536240);
INSERT INTO fft_test VALUES (+0.810618);
INSERT INTO fft_test VALUES (-0.195268);
INSERT INTO fft_test VALUES (-0.850405);
INSERT INTO fft_test VALUES (+0.747778);
INSERT INTO fft_test VALUES (+2.650594);
INSERT INTO fft_test VALUES (+1.619852);
INSERT INTO fft_test VALUES (-1.168586);
INSERT INTO fft_test VALUES (+3.248413);
INSERT INTO fft_test VALUES (-3.674730);
INSERT INTO fft_test VALUES (-0.549743);
INSERT INTO fft_test VALUES (-1.714179);
INSERT INTO fft_test VALUES (+0.166698);
INSERT INTO fft_test VALUES (+0.087862);
INSERT INTO fft_test VALUES (+5.579244);
INSERT INTO fft_test VALUES (+0.853364);
INSERT INTO fft_test VALUES (+1.856844);
INSERT INTO fft_test VALUES (-2.034094);
INSERT INTO fft_test VALUES (+0.600916);
INSERT INTO fft_test VALUES (-2.601675);
INSERT INTO fft_test VALUES (+2.019480);
INSERT INTO fft_test VALUES (+1.312875);
INSERT INTO fft_test VALUES (+0.390986);
INSERT INTO fft_test VALUES (+1.154842);
INSERT INTO fft_test VALUES (+1.724062);
INSERT INTO fft_test VALUES (-2.182066);
INSERT INTO fft_test VALUES (-1.044618);
INSERT INTO fft_test VALUES (-3.187597);
INSERT INTO fft_test VALUES (+0.451712);
INSERT INTO fft_test VALUES (-0.461620);
INSERT INTO fft_test VALUES (+0.080026);
INSERT INTO fft_test VALUES (-2.411010);
INSERT INTO fft_test VALUES (-2.326691);
INSERT INTO fft_test VALUES (-0.366680);
INSERT INTO fft_test VALUES (+0.249985);
INSERT INTO fft_test VALUES (+0.025103);
INSERT INTO fft_test VALUES (-2.060803);
INSERT INTO fft_test VALUES (+0.449356);
INSERT INTO fft_test VALUES (+2.953643);
INSERT INTO fft_test VALUES (+0.197467);
INSERT INTO fft_test VALUES (+2.897046);
INSERT INTO fft_test VALUES (+5.911998);
INSERT INTO fft_test VALUES (-0.803043);
INSERT INTO fft_test VALUES (+0.937277);
INSERT INTO fft_test VALUES (+1.004073);
INSERT INTO fft_test VALUES (+0.273286);
INSERT INTO fft_test VALUES (+1.435510);
INSERT INTO fft_test VALUES (+1.564327);
INSERT INTO fft_test VALUES (+1.705873);
INSERT INTO fft_test VALUES (-0.198579);
INSERT INTO fft_test VALUES (-0.056357);
INSERT INTO fft_test VALUES (-5.257978);
INSERT INTO fft_test VALUES (-4.277309);

SELECT fft_agg(r) as data INTO TEMP T FROM fft_test;

\d+ t

SELECT data FROM t;
SELECT count(data) FROM t;

SELECT '########################################';
-- SELECT fft(data, 50.0) FROM t;
SELECT fft_print(fft(fft_agg(r), 50.0)) FROM fft_test;

ROLLBACK;
