function C = conv12(M,f_J,A,SNR,phase_noise,sample,timeinterval,sample_time,delta_time,JNR)
f_JJ=10*rand(1,M)*10^6;
phi=phase_noise*(rand(1,sample)-0.5);

C=zeros(sample_time*8,1);
for i=1:sample_time
    t=linspace(0,sample-1,sample).*timeinterval+(i-1)*delta_time;
    
    J=A*exp(1i*(2*pi*f_J*t+phi));
    J=awgn(J,SNR,'measured');
    J_normal1=normalization(J);
    
    for k=1:M
        J=J+A*exp(1i*(2*pi*f_JJ(k)*t+phi));
    end
    J=awgn(J,SNR,'measured');
    J_normal2=normalization(J);
    
    J_normal = J_normal1+J_normal2;
    C((i-1)*8+1:(i-1)*8+7)=feature1_7(J_normal);
    C(i*8)=JNR;
end