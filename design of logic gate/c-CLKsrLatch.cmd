restart
wave c-CLKsrLatch.wfm S R CLK NOTQ Q
pattern S	0 0 1 0 1 0 1
pattern R	0 1 0 0 0 1 1
clock CLK	0 1 0 1
run