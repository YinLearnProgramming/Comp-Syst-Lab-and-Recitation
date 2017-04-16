restart
wave c-4bitaddsub.wfm A0 A1 A2 A3 B0 B1 B2 B3 CIN S0 S1 S2 S3 COUT
pattern A0	1 0 0 1 1 0 0 0
pattern A1 	0 0 0 1 1 0 0 1
pattern A2	0 0 0 1 0 0 1 0
pattern A3	1 0 0 1 0 1 1 0
pattern B0	0 0 1 1 0 1 0 1
pattern B1	1 0 1 0 1 1 1 0
pattern B2	1 0 1 0 1 0 0 1
pattern B3	1 0 1 0 1 1 0 1
pattern CIN	1 0 1 0 1 0 1 0
run