function C=SingleFrequencyEnergyConcentration(J_normal,k)
fftJ_normal=fft(J_normal);
[~,m] = max(fftJ_normal);
if m==1024
    C=sum(abs(fftJ_normal(1022:1024)).*abs(fftJ_normal(1022:1024)))/sum(abs(fftJ_normal).*abs(fftJ_normal));
elseif m==1
    C=sum(abs(fftJ_normal(1:3)).*abs(fftJ_normal(1:3)))/sum(abs(fftJ_normal).*abs(fftJ_normal));
else
    C=sum(abs(fftJ_normal(m-k:m+k)).*abs(fftJ_normal(m-k:m+k)))/sum(abs(fftJ_normal).*abs(fftJ_normal));
end