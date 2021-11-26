clc;clear;

JNR=linspace(-18,20,20);
A=5;
f_J=10*rand;
C1=zeros(20,1);
for i=1:20
    J=singletone(f_J*10^6,A,JNR(i),pi/30,1024,10^(-7));
    J_normal=normalization(J);
    Faf = frft(J_normal, 3);
    C1(i)=FractionalFourierTransform(Faf,1);
end
semilogy(JNR,C1)
hold on


M=randi([2,10]);
C2=zeros(20,1);
for i=1:20
    J=multitone(M,A,JNR(i),pi/30,1024,10^(-7));
    J_normal=normalization(J);
    Faf = frft(J_normal, 3);
    C2(i)=FractionalFourierTransform(Faf,1);
end
semilogy(JNR,C2)
hold on

f_J=5*rand*10^6;
f_JJ=f_J+5*rand*10^6;
C3=zeros(20,1);
for i=1:20
    J=linearsweep(f_J,f_JJ,A,JNR(i),pi/30,1024,10^(-7));
    J_normal=normalization(J);
    Faf = frft(J_normal, 3);
    C3(i)=FractionalFourierTransform(Faf,1);
end
semilogy(JNR,C3)
hold on

C4=zeros(20,1);
for i=1:20
    J=partfreband(3*10^6,A,JNR(i),pi/30,1024,10^(-7));
    J_normal=normalization(J);
    Faf = frft(J_normal, 3);
    C4(i)=FractionalFourierTransform(Faf,1);
end
semilogy(JNR,C4)
hold on

C5=zeros(20,1);
for i=1:20
    J=fremodula(2e6,5e6,A,JNR(i),1024,10^(-7));
    J_normal=normalization(J);
    Faf = frft(J_normal, 3);
    C5(i)=FractionalFourierTransform(Faf,1);
end
semilogy(JNR,C5)

legend('singletone','multitone','linearsweep','partfreband','fremodula')