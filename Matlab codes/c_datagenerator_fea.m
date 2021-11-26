clc;clear;close all;
%%
num=10000;
JNR_num=80;
JNR=linspace(-19.5,20,JNR_num);
A=5;
C=zeros(JNR_num*num,9);
%%
for i=1:JNR_num
    for j=1:num
        
        f_J=10*rand;
        J=singletone(f_J*10^6,A,JNR(i),pi,1024,10^(-7));
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=1;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise1.mat','C');
save('noise1_plot.mat','CC')
%%
for i=1:JNR_num
    for j=1:num
        
        M=randi([2,10]);
        J=multitone(M,A,JNR(i),pi,1024,10^(-7));
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=2;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise2.mat','C');
save('noise2_plot.mat','CC')

%%
for i=1:JNR_num
    for j=1:num
        
        f_J=5*rand*10^6;
        f_JJ=f_J+5*rand*10^6;
        J=linearsweep(f_J,f_JJ,A,JNR(i),pi,1024,10^(-7));
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=3;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise3.mat','C');
save('noise3_plot.mat','CC')

%%
for i=1:JNR_num
    for j=1:num
        
        M=randi([2,5]);
        J=partfreband1(M*10^6,A,JNR(i),pi,1024,10^(-7));
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=4;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise4.mat','C');
save('noise4_plot.mat','CC')

%%
for i=1:JNR_num
    for j=1:num
        
        M=randi([2,4]);
        MM=randi([5,8]);
        J=fremodula(M*10^6,MM*10^6,A,JNR(i),1024,10^(-7));
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=5;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise5.mat','C');
save('noise5_plot.mat','CC')


%%
for i=1:JNR_num
    for j=1:num
        
        f_J=10*rand;
        J1=singletone(f_J*10^6,A,JNR(i),pi,1024,10^(-7));
        M=randi([2,10]);
        J2=multitone(M,A,JNR(i),pi,1024,10^(-7));
        J=J1+J2;
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=6;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise12.mat','C');
save('noise12_plot.mat','CC')
%%
for i=1:JNR_num
    for j=1:num
        
        f_J=10*rand;
        J1=singletone(f_J*10^6,A,JNR(i),pi,1024,10^(-7));
        f_J=5*rand*10^6;
        f_JJ=f_J+5*rand*10^6;
        J2=linearsweep(f_J,f_JJ,A,JNR(i),pi,1024,10^(-7));
        J=J1+J2;
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=7;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise13.mat','C');
save('noise13_plot.mat','CC')
%%
for i=1:JNR_num
    for j=1:num
        
        f_J=10*rand;
        J1=singletone(f_J*10^6,A,JNR(i),pi,1024,10^(-7));
        M=randi([2,5]);
        J2=partfreband1(M*10^6,A,JNR(i),pi,1024,10^(-7));
        J=J1+J2;
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=8;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise14.mat','C');
save('noise14_plot.mat','CC')
%%
for i=1:JNR_num
    for j=1:num
        
        f_J=10*rand;
        J1=singletone(f_J*10^6,A,JNR(i),pi,1024,10^(-7));
        M=randi([2,4]);
        MM=randi([5,8]);
        J2=fremodula(M*10^6,MM*10^6,A,JNR(i),1024,10^(-7));
        J=J1+J2;
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=9;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise15.mat','C');
save('noise15_plot.mat','CC')
%%
for i=1:JNR_num
    for j=1:num
        
        M=randi([2,10]);
        J1=multitone(M,A,JNR(i),pi,1024,10^(-7));
        f_J=5*rand*10^6;
        f_JJ=f_J+5*rand*10^6;
        J2=linearsweep(f_J,f_JJ,A,JNR(i),pi,1024,10^(-7));
        J=J1+J2;
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=10;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise23.mat','C');
save('noise23_plot.mat','CC')

%%
for i=1:JNR_num
    for j=1:num
        
        M=randi([2,10]);
        J1=multitone(M,A,JNR(i),pi,1024,10^(-7));
        M=randi([2,5]);
        J2=partfreband1(M*10^6,A,JNR(i),pi,1024,10^(-7));
        J=J1+J2;
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=11;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise24.mat','C');
save('noise24_plot.mat','CC')
%%
for i=1:JNR_num
    for j=1:num
        
        M=randi([2,10]);
        J1=multitone(M,A,JNR(i),pi,1024,10^(-7));
        M=randi([2,4]);
        MM=randi([5,8]);
        J2=fremodula(M*10^6,MM*10^6,A,JNR(i),1024,10^(-7));
        J=J1+J2;
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=12;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise25.mat','C');
save('noise25_plot.mat','CC')
%%
for i=1:JNR_num
    for j=1:num
        
        f_J=5*rand*10^6;
        f_JJ=f_J+5*rand*10^6;
        J1=linearsweep(f_J,f_JJ,A,JNR(i),pi,1024,10^(-7));
        M=randi([2,5]);
        J2=partfreband1(M*10^6,A,JNR(i),pi,1024,10^(-7));
        J=J1+J2;
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=13;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise34.mat','C');
save('noise34_plot.mat','CC')

%%
for i=1:JNR_num
    for j=1:num
        
        f_J=5*rand*10^6;
        f_JJ=f_J+5*rand*10^6;
        J1=linearsweep(f_J,f_JJ,A,JNR(i),pi,1024,10^(-7));
        M=randi([2,4]);
        MM=randi([5,8]);
        J2=fremodula(M*10^6,MM*10^6,A,JNR(i),1024,10^(-7));
        J=J1+J2;
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=14;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise35.mat','C');
save('noise35_plot.mat','CC')

%%
for i=1:JNR_num
    for j=1:num
        
        M=randi([2,5]);
        J1=partfreband1(M*10^6,A,JNR(i),pi,1024,10^(-7));
        M=randi([2,4]);
        MM=randi([5,8]);
        J2=fremodula(M*10^6,MM*10^6,A,JNR(i),1024,10^(-7));
        J=J1+J2;
        J_normal=normalization(J);
        
        C((i-1)*num+j,1:7)=feature1_7(J_normal);
        C((i-1)*num+j,8)=JNR(i);
        C((i-1)*num+j,9)=15;
    end
end
CC=zeros(JNR_num,7);
for i=1:JNR_num
    for k=1:7
        CC(i,k)=sum(C((i-1)*num+1:i*num,k))/num;
    end
end
save('noise45.mat','C');
save('noise45_plot.mat','CC')
%%
clc;clear;

JNR_num=80;
JNR=linspace(-19.5,20,JNR_num);
A=cell2mat(struct2cell(load('noise1_plot.mat')));
B=cell2mat(struct2cell(load('noise2_plot.mat')));
C=cell2mat(struct2cell(load('noise3_plot.mat')));
D=cell2mat(struct2cell(load('noise4_plot.mat')));
E=cell2mat(struct2cell(load('noise5_plot.mat')));
F=cell2mat(struct2cell(load('noise12_plot.mat')));
G=cell2mat(struct2cell(load('noise13_plot.mat')));
H=cell2mat(struct2cell(load('noise14_plot.mat')));
I=cell2mat(struct2cell(load('noise15_plot.mat')));
J=cell2mat(struct2cell(load('noise23_plot.mat')));
K=cell2mat(struct2cell(load('noise24_plot.mat')));
L=cell2mat(struct2cell(load('noise25_plot.mat')));
M=cell2mat(struct2cell(load('noise34_plot.mat')));
N=cell2mat(struct2cell(load('noise35_plot.mat')));
O=cell2mat(struct2cell(load('noise45_plot.mat')));
for i=1:7
    figure()
    semilogy(JNR,A(:,i));
    hold on
    semilogy(JNR,B(:,i));
    hold on
    semilogy(JNR,C(:,i));
    hold on
    semilogy(JNR,D(:,i));
    hold on
    semilogy(JNR,E(:,i));
    hold on
    semilogy(JNR,F(:,i));
    hold on
    semilogy(JNR,G(:,i));
    hold on
    semilogy(JNR,H(:,i));
    hold on
    semilogy(JNR,I(:,i));
    hold on
    semilogy(JNR,J(:,i));
    hold on
    semilogy(JNR,K(:,i));
    hold on
    semilogy(JNR,L(:,i));
    hold on
    semilogy(JNR,M(:,i));
    hold on
    semilogy(JNR,N(:,i));
    hold on
    semilogy(JNR,O(:,i));
    legend('singletone','multitone','linearsweep','partfreband','fremodula'...
        ,'12','13','14','15','23','24','25','34','35','45')
    switch i
        case 1
            savefig('SingleFrequencyEnergyConcentration')
        case 2
            savefig('AverageSpectrumFlatnessCoefficient')
        case 3
            savefig('FractionalFourierTransform')
        case 4
            savefig('FrequencyDomainMomentKurtosisCoefficient')
        case 5
            savefig('FrequencyDomainMomentSkewnessCoefficient')
        case 6
            savefig('FrequencyDomainParameters')
        case 7
            savefig('TimeDomainMomentPeakCoefficient')
    end  
end