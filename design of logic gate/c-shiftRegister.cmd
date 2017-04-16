restart
wave c-shiftRegister.wfm I3 I2 I1 I0 SR-IN S CLK Q3 Q2 Q1 Q0 SR-OUT
stepsize 25.0ns
Clock CLK	0 1 0 0
pattern I3	0 0 0 1 0 0 
pattern I2	1 0 0 0 0 0
pattern I1	0 0 0 1 0 0
pattern I0	1 0 0 0 0 0
pattern SR-IN	0 1 0 0 0 0
pattern S	0 1 0 0 1 0
sim 75ns
run