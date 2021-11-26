function C = conv25fix (M,k_jm,fj,A,SNR,phase_noise,sample,timeinterval,sample_time,delta_time,JNR)
f_JJ=10*rand(1,M)*10^6;

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
phi=phase_noise*(rand(1,sample)-0.5);
for i=1:sample_time
    t=linspace(0,sample-1,sample).*timeinterval+(i-1)*delta_time;
    J=0;
    for k=1:M
        J=J+A*exp(1i*(2*pi*f_JJ(k)*t+phi));
    end
    J=awgn(J,SNR,'measured');
    J_normal1=normalization(J);
    
    J=A*exp(1i*(2*pi*fj*t+2*pi*k_jm*ss));
    J=awgn(J,SNR,'measured');
    J_normal2=normalization(J);
    
    J_normal = J_normal1+J_normal2;
    C((i-1)*7+1:(i-1)*7+7)=feature1_7(J_normal);
end