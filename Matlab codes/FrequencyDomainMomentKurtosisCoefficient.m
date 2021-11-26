function b_4 = FrequencyDomainMomentKurtosisCoefficient(J_normal)
fftJ_normal=fft(J_normal);
mu=mean(abs(fftJ_normal));
sig=std(abs(fftJ_normal));
b_4=mean((abs(fftJ_normal)-mu).^4)/sig^4;