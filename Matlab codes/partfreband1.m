function Jh = partfreband1(f_JJ,A,SNR,phase_noise,sample,timeinterval)
f_J = linspace(-sample/2,sample/2-1,sample).*1*10^2+f_JJ;
phi = phase_noise*(rand(1,sample)-0.5)*2;
t = linspace(0,sample-1,sample).*timeinterval;

A = 5*(randn(1,sample)+1j*randn(1,sample));
a1 = exp(1j*phi);
A = A.*a1;
Af = fft(A);
% figure;plot(abs(Af));
uf = zeros(1,sample);
start = round(rand(1)*1e+6/(1/timeinterval/sample))+1;
delta = round(randi([1,8],1,1)*1e+6/(1/timeinterval/sample));
uf(start:start+delta)=1;
% uf()=1;
% figure;plot(abs(A));
% figure;plot(abs(uf));
Af = A.*uf;
J = Af;

% figure;plot(abs(J));

% J = uf;
J = awgn(J,SNR,'measured');

% figure;plot(abs(J));
Jh = ifft(J);
% 
% Wp = 2e6;
% Ws = 3e6;
% Rp = 20*log10(1/0.89);
% Rs = 20*log10(1/0.175);
% [n,Wn] = buttord(Wp,Ws,Rp,Rs);
% [b,a] = butter(n,Wn);
% [h,w] = freqz(b,a);
% plot(w/(pi),abs(h))
