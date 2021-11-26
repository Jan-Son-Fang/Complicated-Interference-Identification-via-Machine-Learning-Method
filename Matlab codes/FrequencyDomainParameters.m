function R_f = FrequencyDomainParameters(J_normal)
fftJ_normal=fft(J_normal);
mu=mean(abs(fftJ_normal));
sig=std(abs(fftJ_normal));
R_f=sig^2/mu^2;