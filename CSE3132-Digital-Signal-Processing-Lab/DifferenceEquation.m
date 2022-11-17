clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#... Generating a unit impulse signal
n = -3:1:7; #... n = [-3 ... -1 0 1 ... 7]
x = zeros(1,length(n)); #... x = [0 0 0 ... 0 0 0]
index = find(n == 0); #... Index where n=0
x(index) = 1; #... x = [... 0 1 0 ...]
subplot(2,2,1);
stem(n,x,".");
title("Unit sample sequence");
axis tight;

#... With filter function
b = [5 0 -4 1]; #... Coefficients of x
a = [2 -5] #... Coefficients of y
#... 2*y(n)-5*y(n-1) = 5*x(n)-4*x(n-2)+1*x(n-3)
y = filter(b,a,x);
subplot(2,2,2);
stem(n,y,".");
title("y(n) with filter function");
axis tight;

#... Without filter function
yPrime = zeros(1,length(n));
for i = 1:length(n)
  if(n(i)<0)
    yPrime(i) = 0;
  endif
  if(n(i)>=0)
    yPrime(i) = 5*yPrime(i-1)+5*x(i)-4*x(i-2)+x(i-3);
    yPrime(i) = abs(yPrime(i)/2);
  endif
endfor
subplot(2,2,3);
stem(n,yPrime,".");
title("y(n) without filter function");
axis tight;

#... Normalization
maxValue = max(yPrime);
yNorm = yPrime/maxValue;
subplot(2,2,4);
stem(n,yNorm,".")
