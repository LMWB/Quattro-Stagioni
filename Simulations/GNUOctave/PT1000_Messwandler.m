R1 = 10000;
RL = R1;

RTU = 1000; # PT1000 @ 0Grad
RTU = 961;   # PT1000 @ -10Grad
RTM = 1136; # PT1000 @ 35Grad
RTO = 1270; # PT1000 @ 70Grad

V = 25; # select Gain of OP Messbruecker

R3 = V * (RL*RTU) / (RL+RTU)
R2 = (R3*RTU) / (R3-RTU)
