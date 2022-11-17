function output = calculate_dft(signal, coff, len, division)
    output = zeros(1, len);
    for k=1:len

        for j=1:len
            output(k) = output(k) + signal(j)*exp(coff*1i*2*pi*(j-1)*(k-1)/len);
        end
        output(k)=output(k)/division;
    end
end
