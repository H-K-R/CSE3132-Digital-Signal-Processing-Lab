f = 10;
t = 0:0.0001:1;
xt = 2*sin(2*pi*f*t);
subplot(4,1,1);
plot(t,xt);
title(['Original Signal Frequency ' num2str(f) 'Hz']);

%Up Sampling
Fs = (6*f);
n = 0:1/Fs:1;
xn=2*sin(2*pi*f*n);
subplot(4,1,2);
plot(n,xn,'r--.');
axis([0,1,-2,2]);
title(['Up Sampling ' num2str(Fs) 'Hz']);

%Down Sampling
Fs_down = 17;
n_down = 0:1/Fs_down:1;
xn_down = 2*sin(2*pi*f*n_down);
subplot(4,1,3);
hold on;
plot(n_down,xn_down);
axis([0,1,-2,2]);
title(['Down Sampling ' num2str(Fs_down) 'Hz']);

% Check for Aliasing Effect
if(2*f>Fs_down)
    gotAliasing = 0; 
    
    for i=1:10
        aliasing_freq = abs(f-(i*Fs_down));
        if(abs(f-(i*Fs_down))<=Fs/2)
            disp(['Aliasing Frequency = ' num2str(aliasing_freq)]);
            gotAliasing = 1;
            break;
        end
    end
end

%Plotting if Exist
if(gotAliasing)
    if(Fs_down>f)
        subplot(4,1,4);
        hold on;
        plot(n_down,xn_down,'b--o');
        aliased_xn = 2*sin(2*pi*aliasing_freq*t+pi);
        plot(t,aliased_xn);
        hold off;
        title(['Aliased Frequency' num2str(aliasing_freq) ' Hz']);
    
    else
        subplot(4,1,4);
        hold on;
        plot(n_down,xn_down,'b--o');
        aliased_xn = 2*sin(2*pi*aliasing_freq*t);
        plot(t,aliased_xn);
        hold off;
        title(['Aliased Frequency' num2str(aliasing_freq) ' Hz']);
    end
    
    
else
    subplot(4,1,4);
    title(['No Alising Becuase of Frequency' num2str(aliasing_freq) 'Hz' ]);
end


   
