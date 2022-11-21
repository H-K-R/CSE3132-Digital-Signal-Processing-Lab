clc;
clear all;
close all;
t=0:.001:1;
f1= 4;
f2= 8;
f3= 16;
a1= 10;
a2= 20;
a3= 40;
%subplot(3,3,1);
y1=a1*sin(2*pi*f1*t);
y2=a2*sin(2*pi*f2*t);
y3=a3*sin(2*pi*f3*t);
y=y1+y2+y3;
plot(t,y,'r');
xlabel('time');
ylabel('amplitude');
title('Sin Wave')