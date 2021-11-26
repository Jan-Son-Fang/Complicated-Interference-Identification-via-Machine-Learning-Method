clear;
close all
clc
%%
A=cell2mat(struct2cell(load('noise1_featureconv.mat')));
AA=zeros(80000,100,8);
for i=1:100
    for j=1:8
        AA(:,i,j)=A(:,8*(i-1)+j);
    end
end
%%
B=cell2mat(struct2cell(load('noise2_featureconv.mat')));
C=cell2mat(struct2cell(load('noise3_featureconv.mat')));
D=cell2mat(struct2cell(load('noise4_featureconv.mat')));
E=cell2mat(struct2cell(load('noise5_featureconv.mat')));
%%
A=cell2mat(struct2cell(load('featureconv.mat')));
AA=zeros(120000,100,8);
for i=1:100
    for j=1:8
        AA(:,i,j)=A(:,8*(i-1)+j);
    end
end
save('featureconv3D.mat','AA');
%%
L=cell2mat(struct2cell(load('featureconv_label.mat')));
LL=L-1;
save('featureconv_label.mat','LL');
