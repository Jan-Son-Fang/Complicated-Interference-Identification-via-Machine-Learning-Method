function C = conv34(f_J3, delta_f,SNR,phase_noise,sample,timeinterval,sample_time,delta_time,JNR)
phi=phase_noise*(rand(1,sample)-0.5);
C=zeros(sample_time*8,1);

A = 5*(randn(1,sample)+1j*randn(1,sample));
a1 = exp(1j*phi);
A = A.*a1;

uf = zeros(1,sample);
start = round(rand(1)*1e+6/(1/timeinterval/sample))+1;
delta = round(randi([1,8],1,1)*1e+6/(1/timeinterval/sample));
uf(start:start+delta)=1;

J1 = awgn(A.*uf,SNR,'measured');


for i=1:sample_time
    t=linspace(0,sample-1,sample).*timeinterval+(i-1)*delta_time;
    
    k=delta_f/((sample-1)*timeinterval);
    J=5*exp(1i*(2*pi*f_J3*t+pi*k*t.^2+phi));
    J=awgn(J,SNR,'measured');
    J_normal1=normalization(J);
    
    Jh = ifft(J1);
    J_normal2=normalization(Jh);
    
    J_normal = J_normal1+J_normal2;
    C((i-1)*8+1:(i-1)*8+7)=feature1_7(J_normal);
    C(i*8)=JNR;
end