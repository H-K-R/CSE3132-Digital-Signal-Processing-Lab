% Sampling
clf;
clc;
close all;



f = input("Enter Input Signal Frequency: ");
hold on;
t = 0:0.0005:1; %Continous
xt = 5*sin(2*pi*f*t);
plot(t,xt,'r');
grid on;

Fs = input("Enter Sampling Frequency : ");
T = 1/Fs;
n = 0:T:1;
xn = 5*sin(2*pi*f*n);
plot(n,xn,'b');
hold off