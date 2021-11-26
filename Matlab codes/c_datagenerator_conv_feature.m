%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        f_J=10*rand;
        C((i-1)*num+j,:,:)=singletone_conv(f_J*10^6,A,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=1;
    end
end
save('noise1_featureconv.mat','C');
save('noise1_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        M=randi([2,10]);
        C((i-1)*num+j,:,:)=multitone_conv(M,A,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=2;
    end
end
save('noise2_featureconv.mat','C');
save('noise2_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        f_J=5*rand*10^6;
        f_JJ=f_J+5*rand*10^6;
        C((i-1)*num+j,:,:)=linearsweep_conv(f_J,f_JJ,A,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=3;
    end
end
save('noise3_featureconv.mat','C');
save('noise3_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        C((i-1)*num+j,:,:)=partfreband1_conv(JNR(i),pi,1024,10^(-7),sample_time,JNR(i));
        CC((i-1)*num+j)=4;
    end
end
save('noise4_featureconv.mat','C');
save('noise4_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        M=randi([2,4]);
        MM=randi([5,8]);
        C((i-1)*num+j,:,:)=fremodula_conv(M*10^6,MM*10^6,A,JNR(i),1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=5;
    end
end
save('noise5_featureconv.mat','C');
save('noise5_featureconv_label.mat','CC')


%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        f_J=10*rand;
        M=randi([2,10]);
        C((i-1)*num+j,:,:)=conv12(M,f_J,A,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=6;
    end
end
save('noise12_featureconv.mat','C');
save('noise12_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        f_J3=5*rand*10^6;
        f_JJ3=f_J3+5*rand*10^6;
        f_J=10*rand;
        C((i-1)*num+j,:,:)=conv13(f_J*10^6,f_J3,f_JJ3,A,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=7;
    end
end
save('noise13_featureconv.mat','C');
save('noise13_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        f_J=10*rand;
        C((i-1)*num+j,:,:)=conv14(f_J,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=8;
    end
end
save('noise14_featureconv.mat','C');
save('noise14_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        f_J=10*rand;
        M=randi([2,4]);
        MM=randi([5,8]);
        C((i-1)*num+j,:,:)=conv15(f_J,M*10^6,MM*10^6,A,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=9;
    end
end
save('noise15_featureconv.mat','C');
save('noise15_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        f_J=5*rand*10^6;
        f_JJ=f_J+5*rand*10^6;
        M=randi([2,10]);
        C((i-1)*num+j,:,:)=conv23(M,f_J,f_JJ,A,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=10;
    end
end
save('noise23_featureconv.mat','C');
save('noise23_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        M=randi([2,10]);
        C((i-1)*num+j,:,:)=conv24(M,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=11;
    end
end
save('noise24_featureconv.mat','C');
save('noise24_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        M2=randi([2,10]);
        M=randi([2,4]);
        MM=randi([5,8]);
        C((i-1)*num+j,:,:)=conv25(M2,M*10^6,MM*10^6,A,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=12;
    end
end
save('noise25_featureconv.mat','C');
save('noise25_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        f_J=5*rand*10^6;
        f_JJ=f_J+5*rand*10^6;
        C((i-1)*num+j,:,:)=conv34(f_J,f_JJ,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=13;
    end
end
save('noise34_featureconv.mat','C');
save('noise34_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        f_J=5*rand*10^6;
        f_JJ=f_J+5*rand*10^6;
        M=randi([2,4]);
        MM=randi([5,8]);
        C((i-1)*num+j,:,:)=conv35(f_J,f_JJ,M*10^6,MM*10^6,A,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=14;
    end
end
save('noise35_featureconv.mat','C');
save('noise35_featureconv_label.mat','CC')
%%
clc;clear;close all;

num=100;
JNR_num=80;
sample_time=100;

JNR=linspace(-19.5,20,JNR_num);
A=5;
delta_time=1e-4;
C=zeros(JNR_num*num,sample_time*8);
CC=zeros(JNR_num*num,1);

for i=1:JNR_num
    for j=1:num
        M=randi([2,4]);
        MM=randi([5,8]);
        C((i-1)*num+j,:,:)=conv45(M*10^6,MM*10^6,JNR(i),pi,1024,10^(-7),sample_time,delta_time,JNR(i));
        CC((i-1)*num+j)=15;
    end
end
save('noise45_featureconv.mat','C');
save('noise45_featureconv_label.mat','CC')
%%
clc;clear;
A=cell2mat(struct2cell(load('noise1_featureconv.mat')));
B=cell2mat(struct2cell(load('noise2_featureconv.mat')));
C=cell2mat(struct2cell(load('noise3_featureconv.mat')));
D=cell2mat(struct2cell(load('noise4_featureconv.mat')));
E=cell2mat(struct2cell(load('noise5_featureconv.mat')));
A1=cell2mat(struct2cell(load('noise12_featureconv.mat')));
B1=cell2mat(struct2cell(load('noise13_featureconv.mat')));
C1=cell2mat(struct2cell(load('noise14_featureconv.mat')));
D1=cell2mat(struct2cell(load('noise15_featureconv.mat')));
E1=cell2mat(struct2cell(load('noise23_featureconv.mat')));
A2=cell2mat(struct2cell(load('noise24_featureconv.mat')));
B2=cell2mat(struct2cell(load('noise25_featureconv.mat')));
C2=cell2mat(struct2cell(load('noise34_featureconv.mat')));
D2=cell2mat(struct2cell(load('noise35_featureconv.mat')));
E2=cell2mat(struct2cell(load('noise45_featureconv.mat')));
data=[A;B;C;D;E;A1;B1;C1;D1;E1;A2;B2;C2;D2;E2];

A=cell2mat(struct2cell(load('noise1_featureconv_label.mat')));
B=cell2mat(struct2cell(load('noise2_featureconv_label.mat')));
C=cell2mat(struct2cell(load('noise3_featureconv_label.mat')));
D=cell2mat(struct2cell(load('noise4_featureconv_label.mat')));
E=cell2mat(struct2cell(load('noise5_featureconv_label.mat')));
A1=cell2mat(struct2cell(load('noise12_featureconv_label.mat')));
B1=cell2mat(struct2cell(load('noise13_featureconv_label.mat')));
C1=cell2mat(struct2cell(load('noise14_featureconv_label.mat')));
D1=cell2mat(struct2cell(load('noise15_featureconv_label.mat')));
E1=cell2mat(struct2cell(load('noise23_featureconv_label.mat')));
A2=cell2mat(struct2cell(load('noise24_featureconv_label.mat')));
B2=cell2mat(struct2cell(load('noise25_featureconv_label.mat')));
C2=cell2mat(struct2cell(load('noise34_featureconv_label.mat')));
D2=cell2mat(struct2cell(load('noise35_featureconv_label.mat')));
E2=cell2mat(struct2cell(load('noise45_featureconv_label.mat')));
label=[A;B;C;D;E;A1;B1;C1;D1;E1;A2;B2;C2;D2;E2];

rowrank = randperm(size(label, 1));
L=label(rowrank,:);
D=data(rowrank,:);
L=L';
save('featureconv.mat','D');
save('featureconv_label.mat','L');