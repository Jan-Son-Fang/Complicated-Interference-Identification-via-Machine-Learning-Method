function C = partfreband1_conv(SNR,phase_noise,sample,timeinterval,sample_time,JNR)
phi = phase_noise*(rand(1,sample)-0.5)*2;

A = 5*(randn(1,sample)+1j*randn(1,sample));
a1 = exp(1j*phi);
A = A.*a1;

uf = zeros(1,sample);
start = round(rand(1)*1e+6/(1/timeinterval/sample))+1;
delta = round(randi([1,8],1,1)*1e+6/(1/timeinterval/sample));
uf(start:start+delta)=1;

J = awgn(A.*uf,SNR,'measured');

C=zeros(sample_time*8,1);
for i=1:sample_time
    Jh = ifft(J);
    J_normal=normalization(Jh);
    C((i-1)*8+1:(i-1)*8+7)=feature1_7(J_normal);
    C(i*8)=JNR;
end


