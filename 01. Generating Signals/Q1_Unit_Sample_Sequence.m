% © Most Humayra Khanom | 2022
% Experiment 1 from DSP LAB MANUAL
% Objective : Generate Signal for Unit Sample, Unit Step, Exponential, Ramp Sequences, Sinudoidal, Random and Periodic Signal

% ---------------------------------------
% Exp: 1.1 - Generate Unit Sample Sequence
% ---------------------------------------
clf
clc

N = 100; % Total Number of Points (N+N+1)
y_axis = [zeros(1,N),1,zeros(1,N)]; % x = ...0,0,0,1,0,0,0...
x_axis = -N:1:N; % -10,-9,-8,...-1,0,1,2,3,...10


stem(x_axis,y_axis);
% stem(x_axis,y_axis,'filled','diamondr');


% Beautification
xlabel('n'); 
ylabel('x');
axis([-12,12,0,1.5]); %Which points will be shown in x and y axis?
title('Unit Sample Sequence')
