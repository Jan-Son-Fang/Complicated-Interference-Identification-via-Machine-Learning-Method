function J=fremodula(k_jm,fj,A,SNR,sample,timeinterval)
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

J=A*exp(1i*(2*pi*fj*t+2*pi*k_jm*ss));
J=awgn(J,SNR,'measured');