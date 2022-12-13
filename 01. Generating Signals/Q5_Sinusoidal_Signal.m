% © Most Humayra Khanom | 2022
% Experiment 1 from DSP LAB MANUAL
% Objective : Generate Signal for Unit Sample, Unit Step, Exponential, Ramp Sequences, Sinusoidal, Random and Periodic Signal

% ---------------------------------------
% Exp: 1.5 - Generate Sinusoidal Signal / Sine Wave
% ---------------------------------------

%Formula : x(n) = A*sin(2*pi*f*t + ph);

t = 0:0.1:3.39999; %End limit should contain at least one full cycle

%Amplitude
A = 5;

%Frequency
f = .3; %Hz

% Phase
ph = 0;


xt = A*sin(2*pi*f*t + ph);

clc
close

plot(t,xt,'-','LineWidth',3);



%Beautificaiton
grid on
xlabel('t');
ylabel('Amplitude');
legend("Sinwave");