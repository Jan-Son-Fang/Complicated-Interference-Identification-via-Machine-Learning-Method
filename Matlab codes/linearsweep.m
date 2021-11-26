function J=linearsweep(f_J,delta_f,A,SNR,phase_noise,sample,timeinterval)
phi=phase_noise*(rand(1,sample)-0.5);
t=linspace(0,sample-1,sample).*timeinterval;
k=delta_f/((sample-1)*timeinterval);
J=A*exp(1i*(2*pi*f_J*t+pi*k*t.^2+phi));
J=awgn(J,SNR,'measured');