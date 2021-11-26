function plotpowerspectrum(J,sample,timeinterval,shift)
if nargin < 4
    shift = 0;
end
if shift == 1
    fftJ=fftshift(fft(J));
elseif shift == 0
    fftJ=fft(J);
end
P=abs(fftJ).*abs(fftJ);
f=linspace(0,1/(timeinterval*(sample-1)/sample),sample);
plot(f,20*log10(P))
axis([0 1e7 -20 100])
xlabel('frequency(Hz)')
ylabel('power spectrum(dB)')
