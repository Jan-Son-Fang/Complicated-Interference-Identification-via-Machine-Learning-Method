function F_c = AverageSpectrumFlatnessCoefficient(J_normal)
fftJ_normal=fft(J_normal);
P=abs(fftJ_normal).*abs(fftJ_normal);
P_u=P./(sum(P)/length(P));
L=31;
P_p=zeros(1024,1);
for i=32:993
    P_p(i)=P_u(i)-sum(P_u(i-31:i+31))/(2*L+1);
end
F_c=sqrt(sum((P_p-sum(P_p)/length(P_p)).^2)/1024);
