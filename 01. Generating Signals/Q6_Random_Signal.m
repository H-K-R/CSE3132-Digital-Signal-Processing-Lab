% © Most Humayra Khanom | 2022
% Experiment 1 from DSP LAB MANUAL
% Objective : Generate Signal for Unit Sample, Unit Step, Exponential, Ramp Sequences, Sinusoidal, Random and Periodic Signal

% ---------------------------------------
% Exp: 1.6 - Generate Random Signal
% ---------------------------------------

% Random 10 point times
t = 0:0.1:100;

%Random Frequency
f = rand(1);

%Random Amplitude
A = rand(1);


xt = A*cos(2*pi*f*t);

plot(t,xt);
grid on;