% © Most Humayra Khanom | 2022
% Experiment 1 from DSP LAB MANUAL
% Objective : Generate Signal for Unit Sample, Unit Step, Exponential, Ramp Sequences, Sinudoidal, Random and Periodic Signal

% ---------------------------------------
% Exp: 1.2 - Generate Unit Step Sequence
% ---------------------------------------
clf
clc

N = 10;
x = [zeros(1,N),1,ones(1,N)]; %It will generate N zeroes, then 1, then N ones together 
n = -N:1:N;

stem(n,x);

xlabel('n');
ylabel('x');
axis([-N-1,N+1,0,1.5]); %Which points will be shown in x and y axis?
title('Unit Step Sequence')




