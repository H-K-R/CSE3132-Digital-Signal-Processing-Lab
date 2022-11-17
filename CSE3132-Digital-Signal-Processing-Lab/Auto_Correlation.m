clc; #... Clear command line
clear all; #... Clear variables
close all; #... Clear figures

#fs = 64;
#tsamp = 0 : 1/fs : 1;
#x = sin(2 * pi * 5 * tsamp);

x = [1 2 1 1];
x1 = fliplr(x);

n = length(x);
X = [x, zeros(1, n)];
flip_x = [x1, zeros(1, n)];
y = zeros(1, 2*n-1);

for i = 1:2*n-1
    %y(i) = 0;
    for j = 1:n
        if(i-j+1 > 0)
            y(i)=y(i)+X(j)*flip_x(i-j+1);
        else
        end
    end
end


subplot(2, 1, 1);
stem(x);
xlabel('a');
ylabel('Input sequence');

nx = -(length(x)-1):(length(x)-1);

subplot(2, 1, 2);
stem(nx, y,'LineWidth',2);
xlabel('lag');
ylabel('Output Sequence');
