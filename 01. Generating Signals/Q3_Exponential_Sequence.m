% © Most Humayra Khanom | 2022
% Experiment 1 from DSP LAB MANUAL
% Objective : Generate Signal for Unit Sample, Unit Step, Exponential, Ramp Sequences, Sinudoidal, Random and Periodic Signal

% ---------------------------------------
% Exp: 1.3 - Generate Exponential Sequence
% ---------------------------------------


clc;
clf;

N = 21;
n = 0:1:N; %Total Point (N+1)

xt_grow = (1.5).^n; %Growing Sequence (Just a random function came from my mind)
xt_decay = (0.8).^n; %Decaying Sequence  (Just a random function came from my mind)


subplot(2,1,1);
plot(n,xt_grow);
xlabel('n');
ylabel('Growing x(n)');


subplot(2,1,2);
plot(n,xt_decay);
xlabel('n');
ylabel('Decaying x(n)');
