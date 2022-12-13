% © Most Humayra Khanom | 2022
% Experiment 1 from DSP LAB MANUAL
% Objective : Generate Signal for Unit Sample, Unit Step, Exponential, Ramp Sequences, Sinudoidal, Random and Periodic Signal

% ---------------------------------------
% Exp: 1.4 - Generate Unit Ramp Sequence
% ---------------------------------------



N = input("Enter the length of Ramp Sequence"); %Dynamic Input
hold on;

clf
clc

x = [zeros(1,N),0:1:N];
n = -N:1:N;

stem(n,x);

xlabel('n');
ylabel('x');

% axis([-N-2,N+2,0,N+3]); %Uncomment for beautification

title('Unit Ramp Sequence')




