clc;
close all;

t = 0:0.001:1;



f = 10;
Fs = 19;



xt = sin(2*pi*f*t);

hold on;

plot(t,xt);
grid on;

% Sampling

N = 0:1/Fs:1;
xn = sin(2*pi*f*N);

% Check Aliasing

if (Fs/2<f)
    
    i = 1;
    going = 1;
    
    while(going)
        alias = abs(f - Fs* i);
        if(alias>= f*2)
            i = i+1;
        else 
            going = 0;
        end;
    end;
   
    if(fs>f)
        xalias = sin(2*pi*alias*t+pi);
    else
        xalias = sin(2*pi*alias);
    end;
    
    title(['Aliased Frequency : ' num2str(alias) 'Hz' ]);
    plot(t,xalias,"r","LineWidth",2);
    hold off;
else
    title('No Aliasing');
end;

