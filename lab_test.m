input_signal = [1 1 2 2 3 3 4 4 0 0];
len = length(input_signal);
n = 0:len-1;
subplot(3, 1, 2);
stem(n, input_signal);
title('Input signal');
output_dft = calculate_dft(input_signal, -1, len, 1);
subplot(3, 1, 1);
stem(n, abs(output_dft));
title('check DFT symmetry property');

%shifting property, 2 unit advance

shift  = -2;
output_dft_shift = zeros(1, len);
for i=1:len
    output_dft_shift(i) = exp(-1*j*2*pi*shift*i/len)*output_dft(i);
end


inverse_shift_dft = calculate_dft(output_dft_shift, 1, len, len);
subplot(3, 1, 3);
stem(n, abs(inverse_shift_dft));
title('Shift input');
