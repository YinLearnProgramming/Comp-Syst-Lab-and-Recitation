restart
wave 4bitALUShifter.wfm A0 A1 A2 A3 B0 B1 B2 B3 F0 F1 F2 CIN CLK S SR_IN COUT N Z Q3 Q2 Q1 Q0 SR_OUT
stepsize 25.0ns
clock CLK 0 1 1 0
pattern A0	0	1	0	1	1	0	1	0	0	0	0	0
pattern A1	1	1	0	0	0	0	0	0	0	1	0	0
pattern A2	1	1	1	0	0	0	1	0	0	0	0	0
pattern A3 	1	1	1	1	1	0	0	0	0	1	0	0

pattern B0	1	1	1	0	0	0	0	0	0	0	1	1
pattern B1	1	1	0	1	1	0	1	1	1	0	1	1
pattern B2	1	1	1	1	1	0	1	1	0	1	1	0
pattern B3	1	1	0	0	0	0	0	0	0	1	1	0

pattern F0	0	1	0	0	0	0	0	0	0	0	0	0
pattern F1	0	0	0	1	1	1	1	1	1	1	1	1
pattern F2	0	0	1	0	1	0	0	0	0	0	0	0	

pattern CIN	0	1	0	0	0	0	0	0	0	0	0	0	
pattern S0	0	0	0	0	0	0	0	1	0	0	1	0
pattern SR_IN	0	0	0	0	0	0	0	1	0	0	0	0

SIM 75ns
run