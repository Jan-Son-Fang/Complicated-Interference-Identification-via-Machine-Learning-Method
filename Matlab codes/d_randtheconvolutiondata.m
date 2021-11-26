clc;clear;
A=cell2mat(struct2cell(load('con1_data.mat')));
B=cell2mat(struct2cell(load('con2_data.mat')));
C=cell2mat(struct2cell(load('con3_data.mat')));
D=cell2mat(struct2cell(load('con4_data.mat')));
E=cell2mat(struct2cell(load('con5_data.mat')));
data=zeros(1024,3,40000);
data(:,:,1:8000)=A;
data(:,:,8001:16000)=B;
data(:,:,16001:24000)=C;
data(:,:,24001:32000)=D;
data(:,:,32001:40000)=E;

A=cell2mat(struct2cell(load('con1_label.mat')));
B=cell2mat(struct2cell(load('con2_label.mat')));
C=cell2mat(struct2cell(load('con3_label.mat')));
D=cell2mat(struct2cell(load('con4_label.mat')));
E=cell2mat(struct2cell(load('con5_label.mat')));
label=[A,B,C,D,E];

rowrank = randperm(size(label, 2));
L=label(:,rowrank);
D=data(:,:,rowrank);
save('convolutiondata.mat','D');
save('convolutionlabel.mat','L');