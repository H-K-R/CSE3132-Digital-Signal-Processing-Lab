clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#... Analog sinewave
f = 2; #... Frequency(Hz)
a = 20; #... Amplitude
t = 0:0.001:1 #... Continuous time
analogSignal = a*sin(2*pi*f*t);
subplot(3,1,1);
plot(t, analogSignal);
grid on;
title("Continuous sinwave");
xlabel("Time(s)");
ylabel("Amplitude");

#... Sampled sinewave
fs = 50*f; #... Sampling frequency
n = 0:1/fs:1 #... Sampled time
sampledSignal = a*sin(2*pi*f*n);
subplot(3,1,2);
stem(n, sampledSignal, ".");
hold on;
plot(t, analogSignal);
grid on;
title("Sampled sinwave");
xlabel("Time(n)");
ylabel("Amplitude");

#... Quantization
bit = 4; #... Number of bitset
aMin = min(sampledSignal); #... Minimum amplitude
aMax = max(sampledSignal); #... Maximum amplitude
step = (aMax-aMin)/2^(bit - 1) - 1;; #... Step size
quantizedSignal = round(sampledSignal/step)*step;
subplot(3,1,3);
plot(n, quantizedSignal);
hold on;
plot(t, analogSignal);
grid on;
title("Quantized sinwave");
xlabel("Time(n)");
ylabel("Amplitude");
