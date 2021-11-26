function C = conv23fix(M,f_J3,delta_f,A,SNR,phase_noise,sample,timeinterval,sample_time,delta_time,JNR)
f_JJ=10*rand(1,M)*10^6;
phi=phase_noise*(rand(1,sample)-0.5);

C=zeros(sample_time*7,1);
for i=1:sample_time
    t=linspace(0,sample-1,sample).*timeinterval+(i-1)*delta_time;
    
    J=0;
    for k=1:M
        J=J+A*exp(1i*(2*pi*f_JJ(k)*t+phi));
    end
    J=awgn(J,SNR,'measured');
    J_normal2=normalization(J);
    
    k=delta_f/((sample-1)*timeinterval);
    J=A*exp(1i*(2*pi*f_J3*t+pi*k*t.^2+phi));
    J=awgn(J,SNR,'measured');
    J_normal3=normalization(J);
    
    J_normal = J_normal3+J_normal2;
    C((i-1)*7+1:(i-1)*7+7)=feature1_7(J_normal);
end