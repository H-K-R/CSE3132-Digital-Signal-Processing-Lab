clc;clear all; close all;
##Get the inputs
#x = input('enter the input sequence of a signal x(n)');
#h = input('enter the input sequence of a signal h(n)');

h = [1 2 3 4]; #... Impulse response
x = [2 1 2]; #... Input sequence
%Find the length of a signal

%Find the length of y(n)

%Zero padding to make the length = N
X = [x, zeros(1, length(h))];

H = [h, zeros(1, length(x))];

N = length(x)+length(h)-1;
%Initialize the output with zero
y = zeros(1,N);
%Perform the linear convulation

y = zeros(1, N);

for i=1:N
    for j=1:length(x)
        if(i-j+1>0)
            y(i) = y(i)+X(j)*H(i-j+1);
        end
    end
end


 %plot the inputs and outputs

 z1 = 1; #... 0th index of x
 z2 = 1; #... 0th index of h
 index = (z1+z2-1); #... 0th index of ans
 t = -(index-1):length(y)-index; #... time(n)
  #disp(y);
stem(t, y,'.','LineWidth',2);

 #plot(t,y);
#axis([0,size+5,min(output)-5,max(output)+5])
