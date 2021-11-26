function C = conv45(k_jm,fj,SNR,phase_noise,sample,timeinterval,sample_time,delta_time,JNR)
phi=phase_noise*(rand(1,sample)-0.5);

A = 5*(randn(1,sample)+1j*randn(1,sample));
a1 = exp(1j*phi);
A = A.*a1;

uf = zeros(1,sample);
start = round(rand(1)*1e+6/(1/timeinterval/sample))+1;
delta = round(randi([1,8],1,1)*1e+6/(1/timeinterval/sample));
uf(start:start+delta)=1;

J1 = awgn(A.*uf,SNR,'measured');


fs=1/timeinterval;
Tr=sample*timeinterval;
t=0:1/fs:Tr-1/fs;
N=length(t);
u=wgn(1,N,0);
wp=1e6;
ws=2e6;
rp=1;
rs=60;
[n1,wn1]=buttord(wp/(fs/2),ws/(fs/2),rp,rs);
[b,a]=butter(n1,wn1);
u1=filter(b,a,u);

i=1:N-1;
ss=cumsum([0 u1(i)]);
ss=ss*Tr/N;

C=zeros(sample_time*8,1);

for i=1:sample_time
    t=linspace(0,sample-1,sample).*timeinterval+(i-1)*delta_time;
    
    
    J=5*exp(1i*(2*pi*fj*t+2*pi*k_jm*ss));
    J=awgn(J,SNR,'measured');
    J_normal2=normalization(J);
    Jh = ifft(J1);
    J_normal1=normalization(Jh);
    
    J_normal = J_normal1+J_normal2;
    C((i-1)*8+1:(i-1)*8+7)=feature1_7(J_normal);
    C(i*8)=JNR;
end