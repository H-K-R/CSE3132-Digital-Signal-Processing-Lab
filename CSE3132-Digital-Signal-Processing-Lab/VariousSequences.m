clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#... Examples of various sequences

#... Unit smaple sequence
point = 21;
unitSample = zeros(1, point);
unitSample(11) = 1;
n = -10:1:10;
subplot(3, 3, 1);
stem(n, unitSample, '.');
title('Unit sample sequence');

#... Unit step sequence
point = 21;
unitStep = ones(1, point);
for i = 1:10
  unitStep(i) = 0;
end
n = -10:1:10;
subplot(3, 3, 2);
stem(n, unitStep, '.');
title('Unit step sequence');

#... Ramp sequence
point = 21;
rampSequence = zeros(1, point);
n = -5:1:15;
for i = 6:point
  rampSequence(i) = i - 6;
end
subplot(3, 3, 3);
stem(n, rampSequence, '.');
title('Ramp sequence');

#... Exponential sequence
point = 20;
n = 0:point;
expoSeq = 1.3.^(n);
subplot(3, 3, 4);
stem(n, expoSeq, '.');
title('Exponential sequence');

expoSeq = 0.7.^(n);
subplot(3, 3, 5);
stem(n, expoSeq, '.');
title('Exponential sequence');

#... Random sequence
point = 21;
n = -10:1:10;
randomSeq = rand(1, point);
subplot(3, 3, 6);
stem(n, randomSeq, '.');
title('Random sequence');

#... Analog sinwave
f = 5; #... Frequency(Hz)
a = 12; #... Amplidude
t = 0:0.01:1; #... Continuous time
sinSeq = a*sin(2*pi*f*t);
subplot(3, 3, 7);
plot(t, sinSeq);
title('Sinwave');

#... Digital sinwave
fs = 50; #... Sampling frequency
n = 0:1/fs:1; #... Samples
sampledSeq = a*sin(2*pi*f*n);
subplot(3, 3, 8);
stem(n, sampledSeq, '.');
title('Sampled sinwave');

#... Complex sinwave
t = 0:0.005:1;
#... Combination of two sinewave
complexSeq = 5*sin(2*pi*3*t)+5*sin(2*pi*7*t);
subplot(3,3,9);
plot(t, complexSeq);
title('Complex sinwave');
