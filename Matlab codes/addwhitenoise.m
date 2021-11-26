clc;clear;close all;
SNR = linspace(-5,20,6);
for i=1:6
    JNR=SNR(i);
    D=cell2mat(struct2cell(load(['feature_JNR',num2str(JNR),'_700.mat'])));
    L=cell2mat(struct2cell(load(['feature_label_JNR',num2str(JNR),'_700.mat'])));
    L=L';
    L=L+1;
    D1=cell2mat(struct2cell(load('noise0_featureconv.mat')));
    L1=cell2mat(struct2cell(load('noise0_featureconv_label.mat')));
    data=[D;D1];
    label=[L;L1];

    rowrank = randperm(size(label, 1));
    L=label(rowrank,:);
    D=data(rowrank,:);
    L=L';
    save(['b_feature16_JNR',num2str(JNR),'_7.mat'],'D');
    save(['b_feature16_label_JNR',num2str(JNR),'_7.mat'],'L');
end