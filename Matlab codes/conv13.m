function C = conv13(f_J,f_J3,delta_f,A,SNR,phase_noise,sample,timeinterval,sample_time,delta_time,JNR)
phi=phase_noise*(rand(1,sample)-0.5);
C=zeros(sample_time*8,1);

for i=1:sample_time
    t=linspace(0,sample-1,sample).*timeinterval+(i-1)*delta_time;
    
    J=A*exp(1i*(2*pi*f_J*t+phi));
    J=awgn(J,SNR,'measured');
    J_normal1=normalization(J);
    
    k=delta_f/((sample-1)*timeinterval);
    J=A*exp(1i*(2*pi*f_J3*t+pi*k*t.^2+phi));
    J=awgn(J,SNR,'measured');
    J_normal2=normalization(J);
    
    J_normal = J_normal1+J_normal2;
    C((i-1)*8+1:(i-1)*8+7)=feature1_7(J_normal);
    C(i*8)=JNR;
end