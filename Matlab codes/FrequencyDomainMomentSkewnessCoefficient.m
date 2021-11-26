function b_3 = FrequencyDomainMomentSkewnessCoefficient(J_normal)
fftJ_normal=fft(J_normal);
mu=mean(abs(fftJ_normal));
sig=std(abs(fftJ_normal));
b_3=mean((abs(fftJ_normal)-mu).^3)/sig^3;