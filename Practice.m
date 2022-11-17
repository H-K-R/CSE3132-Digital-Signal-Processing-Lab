clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#... Discrete Fourier Transform

xInput = [1 2 3 4 5 6 7]
nPoint = length(xInput); #... How many point dft
n = 0:nPoint-1 #... Time(n)
xLength = length(xInput);
subplot(3,2,1);
stem(n, xInput, ".");

if(nPoint < xLength)
  error("Can not perform dft. Point should be >= length");
endif

xInput = [xInput zeros(1,nPoint-xLength)];

for k = 0:nPoint-1
  xD(k+1) = 0;
  for n = 0:nPoint-1
    xD(k+1) = xD(k+1)+xInput(n+1)*exp(-i*2*pi*k*n/nPoint);
  endfor
endfor

#... Ploting magnitude
n = 0:nPoint-1;
subplot(3,2,2);
plot(n, abs(xD));
axis tight;
title("Magnitude spectrum");

#... Ploting phase
n = 0:nPoint-1
subplot(3,2,3);
plot(n, angle(xD));
axis tight;
title("phase spectrum");

#... Inverse Discrete Fourier Transform

for k = 0:nPoint-1
  xInv(k+1) = 0;
  for n = 0:nPoint-1
    xInv(k+1) = xInv(k+1)+xD(n+1)*exp(i*2*pi*n*k/nPoint);
  endfor
  xInv(k+1) = xInv(k+1)/nPoint;
endfor

#... Ploting Inverse DFT
n = 0:nPoint-1
subplot(3,2,4);
stem(n, xInv, ".");
axis tight;
title("IDFT");

#... Time shifting property
m = 2;
for k = 0:nPoint-1
  xD(k+1) = xD(k+1)*exp(i*2*pi*k*m/nPoint);
endfor

for k = 0:nPoint-1
  xInv(k+1) = 0;
  for n = 0:nPoint-1
    xInv(k+1) = xInv(k+1)+xD(n+1)*exp(i*2*pi*n*k/nPoint);
  endfor
  xInv(k+1) = xInv(k+1)/nPoint;
endfor

#... Ploting shifted Inverse DFT
n = 0:nPoint-1
subplot(3,2,5);
stem(n, xInv, ".");
axis tight;
title("Shifter IDFT");

