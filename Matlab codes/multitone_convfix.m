function C=multitone_convfix(M,A,SNR,phase_noise,sample,timeinterval,sample_time,delta_time,JNR)
f_J=10*rand(1,M)*10^6;
phi=phase_noise*(rand(1,sample)-0.5);

C=zeros(sample_time*7,1);
for i=1:sample_time
    
    t=linspace(0,sample-1,sample).*timeinterval+(i-1)*delta_time;
    J=0;
    for k=1:M
        J=J+A*exp(1i*(2*pi*f_J(k)*t+phi));
    end
    J=awgn(J,SNR,'measured');
    
    J_normal=normalization(J);
    C((i-1)*7+1:(i-1)*7+7)=feature1_7(J_normal);
end