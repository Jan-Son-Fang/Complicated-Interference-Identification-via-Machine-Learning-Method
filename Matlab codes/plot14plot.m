clc;clear;close all;
f_J=10*rand;
A=5;
SNR=30;
N=1024;
JNR = linspace(-5,20,6);
for i= 6
    SNR = JNR(i);
    figure()
    J=wgn(1024,1,0);
    J_normal=normalization(J);
    subplot(4,4,1)
    plotpowerspectrum(J_normal,N,10^(-7));
    title('white noise')
    
    J1=singletone(f_J*10^6,A,SNR,pi,N,10^(-7));
    J1=normalization(J1);
    subplot(4,4,2)
    plotpowerspectrum(J1,N,10^(-7));
    title('single-tone',['INR=',num2str(SNR),'dB'])

    M=randi([2,10]);
    J2=multitone(M,A,SNR,pi,1024,10^(-7));
    J2=normalization(J2);
    subplot(4,4,3)
    plotpowerspectrum(J2,N,10^(-7));
    title('multitone',['INR=',num2str(SNR),'dB'])

    f_J=5*rand*10^6;
    f_JJ=f_J+5*rand*10^6;
    J3=linearsweep(f_J,f_JJ,A,SNR,pi,1024,10^(-7));
    J3=normalization(J3);
    subplot(4,4,4)
    plotpowerspectrum(J3,N,10^(-7));
    title('linear sweeping',['INR=',num2str(SNR),'dB'])

    M=randi([2,5]);
    J4=partfreband1(M*10^6,A,SNR,pi,1024,10^(-7));
    J4=normalization(J4);
    subplot(4,4,5)
    plotpowerspectrum(J4,N,10^(-7));
    title('partial band',['INR=',num2str(SNR),'dB'])

    M=randi([2,4]);
    MM=randi([5,8]);
    J5=fremodula(M*10^6,MM*10^6,A,SNR,1024,10^(-7));
    J5=normalization(J5);
    subplot(4,4,6)
    plotpowerspectrum(J5,N,10^(-7));
    title('frequency-modulated',['INR=',num2str(SNR),'dB'])

        J=J1+J2;
        J=normalization(J);
        subplot(4,4,7)
        plotpowerspectrum(J,N,10^(-7));
        title('single-tone & multitone',['INR=',num2str(SNR),'dB'])

        J=J1+J3;
        J=normalization(J);
        subplot(4,4,8)
        plotpowerspectrum(J,N,10^(-7));
        title('single-tone & linear sweeping',['INR=',num2str(SNR),'dB'])

        J=J1+J4;
        J=normalization(J);
        subplot(4,4,9)
        plotpowerspectrum(J,N,10^(-7));
        title('single-tone & partial band',['INR=',num2str(SNR),'dB'])

        J=J1+J5;
        J=normalization(J);
        subplot(4,4,10)
        plotpowerspectrum(J,N,10^(-7));
        title('single-tone & frequency-modulated',['INR=',num2str(SNR),'dB'])

        J=J2+J3;
        J=normalization(J);
        subplot(4,4,11)
        plotpowerspectrum(J,N,10^(-7));
        title('multitone & linear sweeping',['INR=',num2str(SNR),'dB'])

        J=J2+J4;
        J=normalization(J);
        subplot(4,4,12)
        plotpowerspectrum(J,N,10^(-7));
        title('multitone & partial band',['INR=',num2str(SNR),'dB'])

        J=J5+J2;
        J=normalization(J);
        subplot(4,4,13)
        plotpowerspectrum(J,N,10^(-7));
        title('multitone & frequency-modulated',['INR=',num2str(SNR),'dB'])

        J=J3+J4;
        J=normalization(J);
        subplot(4,4,14)
        plotpowerspectrum(J,N,10^(-7));
        title('linear sweeping & partial band',['INR=',num2str(SNR),'dB'])

        J=J3+J5;
        J=normalization(J);
        subplot(4,4,15)
        plotpowerspectrum(J,N,10^(-7));
        title('linear sweeping & frequency-modulated',['INR=',num2str(SNR),'dB'])

        J=J4+J5;
        J=normalization(J);
        subplot(4,4,16)
        plotpowerspectrum(J,N,10^(-7));
        title('partial band & frequency-modulated',['INR=',num2str(SNR),'dB'])
end