function J = partfreband(f_JJ,A,SNR,phase_noise,sample,timeinterval)
f_J = linspace(-sample/2,sample/2-1,sample).*1*10^2+f_JJ;
phi = phase_noise*(rand(1,sample)-0.5)*2;
t = linspace(0,sample-1,sample).*timeinterval;
% u = wgn(1,sample,1);
% uf = fft(u);
% uf(1:end/4)=0;
% uf(end-end/4+1:end)=0;
% u = ifft(uf);
% u = lowpassfilterrrr();
J = A*exp(1i*(2*pi*f_J.*t+phi));
J = awgn(J,SNR,'measured');
% 
% Wp = 2e6;
% Ws = 3e6;
% Rp = 20*log10(1/0.89);
% Rs = 20*log10(1/0.175);
% [n,Wn] = buttord(Wp,Ws,Rp,Rs);
% [b,a] = butter(n,Wn);
% [h,w] = freqz(b,a);
% plot(w/(pi),abs(h))
