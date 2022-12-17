%Convolution without proper x-axis labeling

clc;
close all;
x = [1,2,3,1];
h = [1,2,1,-1];

size = length(x) + length(h) - 1;

x = [x,zeros(1,length(h))];
h = [h,zeros(1,length(x))];

output = zeros(1,size);

for n = 1:size
    for k = 1:n
        output(n) = output(n) + (x(k) * h(n-k+1));
    end
end

%From Lowest Point of h(n) or x(n) to LowestPoint+ConvolutionSize 
% -1,0,1,2,3,4,5 (Total Point = ConvSize = 7)

t = -1:5; %Index of Convolution 


stem(t,output,'black','LineWidth',2);
%axis([0,size+5,min(output)-5,max(output)+5])
