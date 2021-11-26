function C=fremodula_convfix(k_jm,fj,A,SNR,sample,timeinterval,sample_time,delta_time,JNR)
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
C=zeros(sample_time*7,1);
for i=1:sample_time
    t=linspace(0,sample-1,sample).*timeinterval+(i-1)*delta_time;
    J=A*exp(1i*(2*pi*fj*t+2*pi*k_jm*ss));
    J=awgn(J,SNR,'measured');
    J_normal=normalization(J);
    C((i-1)*7+1:(i-1)*7+7)=feature1_7(J_normal);
end