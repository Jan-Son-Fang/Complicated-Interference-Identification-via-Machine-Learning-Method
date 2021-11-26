function C = singletone_convfix(f_J,A,SNR,phase_noise,sample,timeinterval,sample_time,delta_time,JNR)
phi=phase_noise*(rand(1,sample)-0.5);

C=zeros(sample_time*7,1);
for i=1:sample_time
    t=linspace(0,sample-1,sample).*timeinterval+(i-1)*delta_time;
    J=A*exp(1i*(2*pi*f_J*t+phi));
    J=awgn(J,SNR,'measured');
    J_normal=normalization(J);
    C((i-1)*7+1:(i-1)*7+7)=feature1_7(J_normal);
end