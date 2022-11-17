clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#... Given a continue signal x=12*sin(2*pi*5*t)
#... Sample the signal with Nyquist Rate
#... Sample the signal with over & under sampling

#... Given sinewave
f = 5; #... Frequency = 5 Hz
a = 12; #... Amplitude = 12
t = 0:0.005:1 #... Continuous time
analogSignal = a*sin(2*pi*f*t);
subplot(2,2,1);
plot(t, analogSignal);
title("Analog sinwave");

#... Sampling with Nyquist Rate
#... Nyquist Rate = 2*f
fs = 2*f; #... Sampling frequency
n = 0:1/fs:1; #... Sampled time
sampledSignal = a*sin(2*pi*f*n);
subplot(2,2,2);
stem(n, sampledSignal, ".");
title("Sampled with Nyquist Rate");

#... Under Sampling
#... Sampling frequency under 2*f
fs = 1.5*f; #... Sampling frequency
n = 0:1/fs:1; #... Sampled time
sampledSignal = a*sin(2*pi*f*n);
subplot(2,2,3);
stem(n, sampledSignal, ".");
title("Under samplin");

#... Over Sampling
#... Sampling frequency over 2*f
fs = 7*f; #... Sampling frequency
n = 0:1/fs:1; #... Sampled time
sampledSignal = a*sin(2*pi*f*n);
subplot(2,2,4);
hold on;
stem(n, sampledSignal, ".");
plot(n,sampledSignal);
title("Over samplin");
