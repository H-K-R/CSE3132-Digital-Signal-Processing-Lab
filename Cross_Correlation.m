clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#fs = 64;
#tsamp = 0 : 1/fs : 1;
#x = sin(2 * pi * 5 * tsamp);
#fs2 = 64;
#tsamp2 = 0 : 1/fs2 : 1;
#y1 = sin(2 * pi * 5 * tsamp2);
x = [1 1 2 2];
y1 = [1 3 1];
y2 = fliplr(y1);
%y = xcorr(x, y1);

n1 = length(x);
n2 = length(y2);

X = [x, zeros(1, n2)];
Y = [y2, zeros(1, n1)];

y = zeros(1, n1+n2-1);

for i = 1:n1+n2-1
    for j = 1:n1
        if(i-j+1>0)
            y(i) = y(i) + X(j)*Y(i-j+1);
        else
        end
    end
end


subplot(2, 1, 1);
stem(x);
xlabel('a');
ylabel('Input sequence');

nx = -(length(y1)-1):(length(x)-1);

subplot(2, 1, 2);
stem(nx, y,'LineWidth',2);
xlabel('b');
ylabel('Output Sequence');
