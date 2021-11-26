function J=multitone(M,A,SNR,phase_noise,sample,timeinterval)
f_J=10*rand(1,M)*10^6;
phi=phase_noise*(rand(1,sample)-0.5);
t=linspace(0,sample-1,sample).*timeinterval;
J=0;
for i=1:M
    J=J+A*exp(1i*(2*pi*f_J(i)*t+phi));
end
J=awgn(J,SNR,'measured');