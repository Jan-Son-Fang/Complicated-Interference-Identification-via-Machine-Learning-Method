clc;clear all;close all;
%%
f_J=10*rand;
A=5;
SNR=30;
N=8192;
J=singletone(f_J*10^6,A,SNR,pi,N,10^(-7));
plotpowerspectrum(J,N,10^(-7));
hold on
J_normal=normalization(J);
plotpowerspectrum(J_normal,N,10^(-7));
title('Single Tone Jamming')
legend('original','normalized')
figure()
%%
A=5;
SNR=30;
N=8192;
J=multitone(randi([2,10]),A,SNR,pi,N,10^(-7));
plotpowerspectrum(J,N,10^(-7));
hold on
J_normal=normalization(J);
plotpowerspectrum(J_normal,N,10^(-7));
title('Multi Tone Jamming')
legend('original','normalized')
%%
f_J=2*(rand+1)*10^6;
delta_f = 10e+5*(rand+1);
% f_JJ=f_J+5*rand*10^6;
figure()
A=5;
SNR=30;
J=linearsweep(f_J,delta_f,A,SNR,pi,8192,10^(-7));
plotpowerspectrum(J,8192,10^(-7));
hold on
J_normal=normalization(J);
plotpowerspectrum(J_normal,8192,10^(-7));
title('Linear Sweep Jamming')
legend('original','normalized')
%%
A=5;
SNR=30;
N = 8192;
figure;
J=partfreband1(3*10^6,A,SNR,pi,N,10^(-7));
plotpowerspectrum(J,N,10^(-7));
hold on
J_normal=normalization(J);
plotpowerspectrum(J_normal,N,10^(-7));
title('Part Frequency Band Jamming')
legend('original','normalized')
% figure()
%%
A=5;
SNR=30;
N = 8192;
figure;
J=fremodula(2e6,5e6,A,SNR,N,10^(-7));
plotpowerspectrum(J,N,10^(-7));
hold on
J_normal=normalization(J);
plotpowerspectrum(J_normal,N,10^(-7));
title('Frequency Modulated Jamming')
legend('original','normalized')