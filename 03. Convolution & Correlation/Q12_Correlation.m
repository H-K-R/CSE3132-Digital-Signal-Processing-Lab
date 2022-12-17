clc; close all; clear all;

% Signal-1
fs = 64;
tsamp = 0 : 1/fs : 1;
raw_first_signal = sin(2 * pi * 5 * tsamp);

% Signal-2
fs2 = 64;
tsamp2 = 0 : 1/fs2 : 1;
raw_second_signal = sin(2 * pi * 5 * tsamp2);



% raw_first_signal= [1,2,3,4,5];
% raw_second_signal = [1,2,3,4,5];


raw_first_signal_len = length(raw_first_signal);
raw_second_signal_len = length(raw_second_signal);
correlation_size = raw_first_signal_len + raw_second_signal_len - 1;

% making the length of two signal same
first_signal = [raw_first_signal, zeros(1, raw_second_signal_len)];
second_signal = fliplr([zeros(1, raw_first_signal_len), raw_second_signal]);


outputSignal = zeros(1, correlation_size);
lag = zeros(1, correlation_size);

size = length(second_signal);
lag_value = raw_second_signal_len * (-1);

% Correlation operations using for loop
for n = 1 : correlation_size
    lag(n) = lag_value + 1;
    for k = 1 : n
        outputSignal(n) = outputSignal(n) + (first_signal(k) * second_signal(n - k + 1));
    end
    lag_value = lag_value + 1;
end

% function generated Correlation
[fun_gen_outputSignal, lagg] = xcorr(raw_first_signal, raw_second_signal);


% Ploting.....

subplot(3,2,2);
plot(raw_first_signal, "r--o");
title('First Signal');
grid on;


subplot(3,2,1);
plot(raw_second_signal,"b--o");
title('Second Signal');
grid on;

subplot(3,2,[3,4]);
plot(lag ,outputSignal);
title('Correlation Output Signal');
xlabel('Lag');
grid on;

subplot(3,2,[5,6]);
plot(lagg, fun_gen_outputSignal);
title('Correlation Output Signal (function generated)');
xlabel('Lag');
grid on;