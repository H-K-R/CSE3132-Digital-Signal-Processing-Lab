clc;
clear all;
close all;

#pkg install -forge signal
#pkg load signal
#... To install butter function in octave

f=7;
fs = 200;
t = 0:1/fs:1; % 0 to 1 sec, sampling time Ts = 1/Fs
signal = sin(2*pi*f*t);
subplot(4,1,1);
plot(t,signal);
title('x(t) signal');
noisySignal = signal + rand(1,length(signal));
subplot(4,1,2);
plot(t,noisySignal);
title('Noise signal');

#..FFT

fftPoint = 2^nextpow2(length(noisySignal));
freDomain = abs(fft(noisySignal, fftPoint)); %signal in frequency domain
nFft = 0: fftPoint - 1;
subplot(4,1,3);
plot(nFft, freDomain);
axis tight;
title("Frequency");

#..Filtering
order = 5;
wn = [7, 13]*2/fs;
[b,a] = butter(order, wn, 'bandpass');
# b = cofficient of x
# a = cofficient of y
filterdSignal = filter(b,a,noisySignal);
subplot(4,1,4);
plot(t, filterdSignal);
axis tight;
title("Signal after filtering");



