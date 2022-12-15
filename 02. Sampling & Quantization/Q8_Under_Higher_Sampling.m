% Sampling
clf;
clc;
close all;


%Input Signal (Considered as a Continous Signal)
f = 5;
hold on;
t = 0:0.0005:1; %Continous
xt = 5*sin(2*pi*f*t);
plot(t,xt,'r','LineWidth',2);
grid on;
title('Input Signal, Under Sampling & Higher Sampling')
xlabel('Time');
ylabel('Value');


%Under Sampling
Fs_under = 9;
T = 1/Fs_under;
n = 0:T:1;
xn = 5*sin(2*pi*f*n);
plot(n,xn,'b--o','LineWidth',2);

%Higer Sampling
Fs_upper = 40;
T = 1/Fs_upper;
n = 0:T:1;
xn = 5*sin(2*pi*f*n);
plot(n,xn,'black','LineWidth',2);
legend('Input Signal','Under Sampling','Higher Sampling');
hold off