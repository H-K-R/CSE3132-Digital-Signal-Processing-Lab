clc;
clear all;
N=8;
x=[7 3 5 2 6 1 11 9];
subplot (1,1,1);
stem(1:N,abs(fft(x)));
xlabel('Frequency');
ylabel ('|X(k)|');
title ('8-point DFT of the sequence');