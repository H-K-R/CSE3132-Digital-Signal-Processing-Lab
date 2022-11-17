##clc;
##clear all;
##close all;
##
###... Discrete Fourier Transform
##f = 10;
##fs = 100;
##ts = 0:1/fs:1;
##xInput = sin(2*pi*f*ts);
##%xInput = ones(1, 7);
##nPoint = 160;
##xLength = length(xInput);
##
##if (nPoint < xLength)
##  error("Can©t perform dft");
##endif
##
##xInput = [xInput zeros(1, nPoint-xLength)];
##
##for k = 0:nPoint-1
##  xD(k+1) = 0;
##  for n = 0:nPoint-1
##    xD(k+1) = xD(k+1)+xInput(n+1)*exp(-i*2*pi*k*n/nPoint);
##  endfor
##endfor
##
##n = 0:nPoint-1;
##subplot(3,1,1);
##plot(n,abs(xD));
##axis tight;
##title("Magnitude spectrum");
##
##subplot(3,1,2);
##plot(n,angle(xD));
##axis tight;
##title("Angle spectrum");
##
##for k = 0:nPoint-1
##  xInv(k+1) = 0;
##  for n = 0:nPoint-1
##    xInv(k+1) = xInv(k+1)+xD(n+1)*exp(i*2*pi*n*k/nPoint);
##  endfor
##  xInv(k+1) = xInv(k+1)/nPoint;
##endfor
##
##n = 0:nPoint-1;
##disp(xInv);
##subplot(3,1,3);
##plot(n, xInv);
##axis tight;


Fs = 8000;
nx = 0:1/Fs:1;
input_signal = [2 3 4 2 1 4 5];

%Perform 8 point DFT
len = 8;
n = 0:len-1;
 subplot(2, 2,1);
 plot(n, input_signal(1:len));
 title('Input Signal');


y = calculate_dft(input_signal, -1, len, 1);
#subplot(2, 2, 1)
#stem(n, abs(y));
#title('Magnitude spectrum');

subplot(2, 2, 2);
real_part = real(y);
stem(n, real_part);
title('Real Part');

subplot(2, 2, 3);
stem(n, imag(y));
title('Imaginary Part');

subplot(2,2,4);
plot(n,angle(y));
axis tight;
title("Angle spectrum");

% dft_output = zeros(1, len);
% for j=1:len
%     for k = 1:len
%         dft_output(j) = dft_output(j) + input_signal(k)*exp(-1i*2*pi*(k-1)*(j-1)/len);
%     end
% end
%
% magnitude = abs(dft_output);
% realP = real(dft_output);
% imgP = imag(dft_output);
%
% subplot(2, 2, 1);
% stem(n, magnitude);
% subplot(2, 2, 2);
% stem(n, realP);


inverse_dft = calculate_dft(y, 1, len, len);
subplot(2, 2, 4)
plot(n, inverse_dft);
title('IDFT');
