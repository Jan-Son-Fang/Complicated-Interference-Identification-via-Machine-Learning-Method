function P = powerspectrum(J,shift)
if nargin < 4
    shift = 0;
end
if shift == 1
    fftJ=fftshift(fft(J));
elseif shift == 0
    fftJ=fft(J);
end
P=abs(fftJ).*abs(fftJ);
end
