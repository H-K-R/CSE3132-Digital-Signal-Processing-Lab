clc;
clf;

f = 3;
A = 20;
t = 0:0.0001:1;
xt = A*sin(2*pi*f*t);
grid on;
subplot(3,1,1);
plot(t,xt,'black');
title(['Original Signal Frequency ' num2str(f) 'Hz']);
axis([0,max(t),-A-10,A+10]);

%Up Sampling
Fs = (40*f);
n = 0:1/Fs:1;
xn=A*sin(2*pi*f*n);
subplot(3,1,2);
hold on;
stem(n,xn,"b--.");
plot(n,xn,"black");
axis([0,max(t),-A-10,A+10]);
title(['Sampling ' num2str(Fs) 'Hz']);

hold off;

% Quantization
no_of_bits = 3;
total_level = 2^no_of_bits;
step_size = (max(xn)-min(xn))/total_level;
xq = (round(xn/step_size))*step_size;

subplot(3,1,3);
plot(n,xq,'LineWidth',3);
axis([0,max(t),-A-10,A+10]);
title(['Quanztization in ' num2str(no_of_bits) ' Bit/s']);
