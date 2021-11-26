%%
clc;clear;
num=100;
JNR_num=80;
JNR=linspace(-19.5,20,JNR_num);
A=5;
data=zeros(1024,3,100*80);
label=zeros(1,100*80);
for i=1:JNR_num
    for j=1:num
        f_J=10*rand;
        J=singletone(f_J*10^6,A,JNR(i),pi/30,1024,10^(-7));
        J_normal=normalization(J);
        data(:,1,(i-1)*num+j)=real(J_normal);
        data(:,2,(i-1)*num+j)=imag(J_normal);
        fftJ_normal=fft(J_normal);
        data(:,3,(i-1)*num+j)=abs(fftJ_normal).*abs(fftJ_normal);
        label((i-1)*num+j)=1;
    end
end

save('con1_data.mat','data');
save('con1_label.mat','label');
%%
clc;clear;
num=100;
JNR_num=80;
JNR=linspace(-19.5,20,JNR_num);
A=5;
data=zeros(1024,3,100*80);
label=zeros(1,100*80);
for i=1:JNR_num
    for j=1:num
        M=randi([2,10]);
        J=multitone(M,A,JNR(i),pi/30,1024,10^(-7));
        J_normal=normalization(J);
        data(:,1,(i-1)*num+j)=real(J_normal);
        data(:,2,(i-1)*num+j)=imag(J_normal);
        fftJ_normal=fft(J_normal);
        data(:,3,(i-1)*num+j)=abs(fftJ_normal).*abs(fftJ_normal);
        label((i-1)*num+j)=2;
    end
end

save('con2_data.mat','data');
save('con2_label.mat','label');
%%
clc;clear;
num=100;
JNR_num=80;
JNR=linspace(-19.5,20,JNR_num);
A=5;
data=zeros(1024,3,100*80);
label=zeros(1,100*80);
for i=1:JNR_num
    for j=1:num
        f_J=5*rand*10^6;
        f_JJ=f_J+5*rand*10^6;
        J=linearsweep(f_J,f_JJ,A,JNR(i),pi/30,1024,10^(-7));
        J_normal=normalization(J);
        data(:,1,(i-1)*num+j)=real(J_normal);
        data(:,2,(i-1)*num+j)=imag(J_normal);
        fftJ_normal=fft(J_normal);
        data(:,3,(i-1)*num+j)=abs(fftJ_normal).*abs(fftJ_normal);
        label((i-1)*num+j)=3;
    end
end

save('con3_data.mat','data');
save('con3_label.mat','label');
%%
clc;clear;
num=100;
JNR_num=80;
JNR=linspace(-19.5,20,JNR_num);
A=5;
data=zeros(1024,3,100*80);
label=zeros(1,100*80);
for i=1:JNR_num
    for j=1:num
        M=randi([2,5]);
        J=partfreband(M*10^6,A,JNR(i),pi/30,1024,10^(-7));
        J_normal=normalization(J);
        data(:,1,(i-1)*num+j)=real(J_normal);
        data(:,2,(i-1)*num+j)=imag(J_normal);
        fftJ_normal=fft(J_normal);
        data(:,3,(i-1)*num+j)=abs(fftJ_normal).*abs(fftJ_normal);
        label((i-1)*num+j)=4;
    end
end

save('con4_data.mat','data');
save('con4_label.mat','label');
%%
clc;clear;
num=100;
JNR_num=80;
JNR=linspace(-19.5,20,JNR_num);
A=5;
data=zeros(1024,3,100*80);
label=zeros(1,100*80);
for i=1:JNR_num
    for j=1:num
        M=randi([2,4]);
        MM=randi([5,8]);
        J=fremodula(M*10^6,MM*10^6,A,JNR(i),1024,10^(-7));
        J_normal=normalization(J);
        data(:,1,(i-1)*num+j)=real(J_normal);
        data(:,2,(i-1)*num+j)=imag(J_normal);
        fftJ_normal=fft(J_normal);
        data(:,3,(i-1)*num+j)=abs(fftJ_normal).*abs(fftJ_normal);
        label((i-1)*num+j)=5;
    end
end

save('con5_data.mat','data');
save('con5_label.mat','label');