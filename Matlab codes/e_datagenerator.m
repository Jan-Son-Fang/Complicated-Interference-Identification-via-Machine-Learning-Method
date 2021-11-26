clc;clear;close all;
f_J=10*rand;
A=5;
SNR=30;
N=1024;
JNR = linspace(-5,20,6);
for i=1:6
    NN=5000;
    conv=zeros(NN*15,1024*3);
    conv_label=zeros(NN*15,1);
    for j=1:NN
        
    SNR = JNR(i);
    J=wgn(1024,1,0);
    J_normal=normalization(J);
    conv(j,1:1024)=real(J_normal);
    conv(j,1025:2048)=imag(J_normal);
    conv(j,2049:3072)=powerspectrum(J_normal);
    conv_label(j)=0;

    
    J1=singletone(f_J*10^6,A,SNR,pi,N,10^(-7));
    J1=normalization(J1);
    conv(1*NN+j,1:1024)=real(J1);
    conv(1*NN+j,1025:2048)=imag(J1);
    conv(1*NN+j,2049:3072)=powerspectrum(J1);
    conv_label(1*NN+j)=1;

    M=randi([2,10]);
    J2=multitone(M,A,SNR,pi,1024,10^(-7));
    J2=normalization(J2);
    conv(2*NN+j,1:1024)=real(J2);
    conv(2*NN+j,1025:2048)=imag(J2);
    conv(2*NN+j,2049:3072)=powerspectrum(J2);
    conv_label(2*NN+j)=2;


    f_J=5*rand*10^6;
    f_JJ=f_J+5*rand*10^6;
    J3=linearsweep(f_J,f_JJ,A,SNR,pi,1024,10^(-7));
    J3=normalization(J3);
    conv(3*NN+j,1:1024)=real(J3);
    conv(3*NN+j,1025:2048)=imag(J3);
    conv(3*NN+j,2049:3072)=powerspectrum(J3);
    conv_label(3*NN+j)=3;

    M=randi([2,5]);
    J4=partfreband1(M*10^6,A,SNR,pi,1024,10^(-7));
    J4=normalization(J4);
    conv(4*NN+j,1:1024)=real(J4);
    conv(4*NN+j,1025:2048)=imag(J4);
    conv(4*NN+j,2049:3072)=powerspectrum(J4);
    conv_label(4*NN+j)=4;


    M=randi([2,4]);
    MM=randi([5,8]);
    J5=fremodula(M*10^6,MM*10^6,A,SNR,1024,10^(-7));
    J5=normalization(J5);
    conv(5*NN+j,1:1024)=real(J5);
    conv(5*NN+j,1025:2048)=imag(J5);
    conv(5*NN+j,2049:3072)=powerspectrum(J5);
    conv_label(5*NN+j)=5;


        J=J1+J2;
        J=normalization(J);
        conv(6*NN+j,1:1024)=real(J);
        conv(6*NN+j,1025:2048)=imag(J);
        conv(6*NN+j,2049:3072)=powerspectrum(J);
        conv_label(6*NN+j)=6;


        J=J1+J3;
        J=normalization(J);
        conv(7*NN+j,1:1024)=real(J);
        conv(7*NN+j,1025:2048)=imag(J);
        conv(7*NN+j,2049:3072)=powerspectrum(J);
        conv_label(7*NN+j)=7;


        J=J1+J4;
        J=normalization(J);
        conv(8*NN+j,1:1024)=real(J);
        conv(8*NN+j,1025:2048)=imag(J);
        conv(8*NN+j,2049:3072)=powerspectrum(J);
        conv_label(8*NN+j)=8;


        J=J1+J5;
        J=normalization(J);
        conv(9*NN+j,1:1024)=real(J);
        conv(9*NN+j,1025:2048)=imag(J);
        conv(9*NN+j,2049:3072)=powerspectrum(J);
        conv_label(9*NN+j)=9;


        J=J2+J3;
        J=normalization(J);
        conv(10*NN+j,1:1024)=real(J);
        conv(10*NN+j,1025:2048)=imag(J);
        conv(10*NN+j,2049:3072)=powerspectrum(J);
        conv_label(10*NN+j)=10;


        J=J2+J4;
        J=normalization(J);
        conv(11*NN+j,1:1024)=real(J);
        conv(11*NN+j,1025:2048)=imag(J);
        conv(11*NN+j,2049:3072)=powerspectrum(J);
        conv_label(11*NN+j)=11;


        J=J5+J2;
        J=normalization(J);
        conv(12*NN+j,1:1024)=real(J);
        conv(12*NN+j,1025:2048)=imag(J);
        conv(12*NN+j,2049:3072)=powerspectrum(J);
        conv_label(12*NN+j)=12;


        J=J3+J4;
        J=normalization(J);
        conv(13*NN+j,1:1024)=real(J);
        conv(13*NN+j,1025:2048)=imag(J);
        conv(13*NN+j,2049:3072)=powerspectrum(J);
        conv_label(13*NN+j)=13;

        J=J3+J5;
        J=normalization(J);
        conv(14*NN+j,1:1024)=real(J);
        conv(14*NN+j,1025:2048)=imag(J);
        conv(14*NN+j,2049:3072)=powerspectrum(J);
        conv_label(14*NN+j)=14;


        J=J4+J5;
        J=normalization(J);
        conv(15*NN+j,1:1024)=real(J);
        conv(15*NN+j,1025:2048)=imag(J);
        conv(15*NN+j,2049:3072)=powerspectrum(J);
        conv_label(15*NN+j)=15;
    end
    save(['conv_image',num2str(JNR(i)),'dB.mat'],'conv');
    save(['conv_label',num2str(JNR(i)),'dB.mat'],'conv_label');

    rowrank = randperm(size(conv_label, 1));
    L=conv_label(rowrank);
    D=conv(rowrank,:);
    save(['conv_image',num2str(JNR(i)),'dB-rand.mat'],'D');
    save(['conv_label',num2str(JNR(i)),'dB-rand.mat'],'L');
end