function J = singletone(f_J,A,SNR,phase_noise,sample,timeinterval)
phi=phase_noise*(rand(1,sample)-0.5);
t=linspace(0,sample-1,sample).*timeinterval;
J=A*exp(1i*(2*pi*f_J*t+phi));
J=awgn(J,SNR,'measured');