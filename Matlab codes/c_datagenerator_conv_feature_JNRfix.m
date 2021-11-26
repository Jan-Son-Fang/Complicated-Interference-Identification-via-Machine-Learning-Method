%%
clc;clear;close all;
SNR = linspace(-5,20,6);
%%
for i=1:6
    %%
    num=5000;
    sample_time=1;
    JNR=SNR(i);
    A=5;
    delta_time=1e-4;
    C=zeros(num,sample_time*7);
    CC=zeros(num,1);
        %%
        for j=1:num
            f_J=10*rand;
            C(j,:,:)=whitenoise_convfix(sample_time);
            CC(j)=0;
        end
    save('noise0_featureconv.mat','C');
    save('noise0_featureconv_label.mat','CC')
    %%
        for j=1:num
            f_J=10*rand;
            C(j,:,:)=singletone_convfix(f_J*10^6,A,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=1;
        end
    save('noise1_featureconv.mat','C');
    save('noise1_featureconv_label.mat','CC')
    %%
        for j=1:num
            M=randi([2,10]);
            C(j,:,:)=multitone_convfix(M,A,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=2;
        end
    save('noise2_featureconv.mat','C');
    save('noise2_featureconv_label.mat','CC')
    %%
        for j=1:num
            f_J=5*rand*10^6;
            f_JJ=f_J+5*rand*10^6;
            C(j,:,:)=linearsweep_convfix(f_J,f_JJ,A,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=3;
        end
    save('noise3_featureconv.mat','C');
    save('noise3_featureconv_label.mat','CC')
    %%
        for j=1:num
            C(j,:,:)=partfreband1_convfix(JNR,pi,1024,10^(-7),sample_time,JNR);
            CC(j)=4;
        end
    save('noise4_featureconv.mat','C');
    save('noise4_featureconv_label.mat','CC')
    %%
        for j=1:num
            M=randi([2,4]);
            MM=randi([5,8]);
            C(j,:,:)=fremodula_convfix(M*10^6,MM*10^6,A,JNR,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=5;
        end
    save('noise5_featureconv.mat','C');
    save('noise5_featureconv_label.mat','CC')
    %%
        for j=1:num
            f_J=10*rand;
            M=randi([2,10]);
            C(j,:,:)=conv12fix(M,f_J,A,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=6;
        end

    save('noise12_featureconv.mat','C');
    save('noise12_featureconv_label.mat','CC')
    %%
        for j=1:num
            f_J3=5*rand*10^6;
            f_JJ3=f_J3+5*rand*10^6;
            f_J=10*rand;
            C(j,:,:)=conv13fix(f_J*10^6,f_J3,f_JJ3,A,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=7;
        end
    save('noise13_featureconv.mat','C');
    save('noise13_featureconv_label.mat','CC')
    %%
        for j=1:num
            f_J=10*rand;
            C(j,:,:)=conv14fix(f_J,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=8;
        end
    save('noise14_featureconv.mat','C');
    save('noise14_featureconv_label.mat','CC')
    %%
        for j=1:num
            f_J=10*rand;
            M=randi([2,4]);
            MM=randi([5,8]);
            C(j,:,:)=conv15fix(f_J,M*10^6,MM*10^6,A,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=9;
        end
    save('noise15_featureconv.mat','C');
    save('noise15_featureconv_label.mat','CC')
    %%
        for j=1:num
            f_J=5*rand*10^6;
            f_JJ=f_J+5*rand*10^6;
            M=randi([2,10]);
            C(j,:,:)=conv23fix(M,f_J,f_JJ,A,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=10;
        end
    save('noise23_featureconv.mat','C');
    save('noise23_featureconv_label.mat','CC')
    %%
        for j=1:num
            M=randi([2,10]);
            C(j,:,:)=conv24fix(M,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=11;
        end

    save('noise24_featureconv.mat','C');
    save('noise24_featureconv_label.mat','CC')
    %%
        for j=1:num
            M2=randi([2,10]);
            M=randi([2,4]);
            MM=randi([5,8]);
            C(j,:,:)=conv25fix(M2,M*10^6,MM*10^6,A,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=12;
        end
    save('noise25_featureconv.mat','C');
    save('noise25_featureconv_label.mat','CC')
    %%
        for j=1:num
            f_J=5*rand*10^6;
            f_JJ=f_J+5*rand*10^6;
            C(j,:,:)=conv34fix(f_J,f_JJ,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=13;
        end
    save('noise34_featureconv.mat','C');
    save('noise34_featureconv_label.mat','CC')
    %%
        for j=1:num
            f_J=5*rand*10^6;
            f_JJ=f_J+5*rand*10^6;
            M=randi([2,4]);
            MM=randi([5,8]);
            C(j,:,:)=conv35fix(f_J,f_JJ,M*10^6,MM*10^6,A,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=14;
        end
    save('noise35_featureconv.mat','C');
    save('noise35_featureconv_label.mat','CC')
    %%
        for j=1:num
            M=randi([2,4]);
            MM=randi([5,8]);
            C(j,:,:)=conv45fix(M*10^6,MM*10^6,JNR,pi,1024,10^(-7),sample_time,delta_time,JNR);
            CC(j)=15;
        end
    save('noise45_featureconv.mat','C');
    save('noise45_featureconv_label.mat','CC')
    %%
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
    L=L-1;
    save(['feature_JNR',num2str(JNR),'_700.mat'],'D');
    save(['feature_label_JNR',num2str(JNR),'_700.mat'],'L');
end