A=cell2mat(struct2cell(load('noise1.mat')));
rowrank = randperm(size(A, 1));
A=A(rowrank, :);

B=cell2mat(struct2cell(load('noise2.mat')));
rowrank = randperm(size(B, 1));
B=B(rowrank, :);

C=cell2mat(struct2cell(load('noise3.mat')));
rowrank = randperm(size(C, 1));
C=C(rowrank, :);

D=cell2mat(struct2cell(load('noise4.mat')));
rowrank = randperm(size(D, 1));
D=D(rowrank, :);

E=cell2mat(struct2cell(load('noise5.mat')));
rowrank = randperm(size(E, 1));
E=E(rowrank, :);

F=cell2mat(struct2cell(load('noise12.mat')));
rowrank = randperm(size(F, 1));
F=F(rowrank, :);

G=cell2mat(struct2cell(load('noise13.mat')));
rowrank = randperm(size(G, 1));
G=G(rowrank, :);

H=cell2mat(struct2cell(load('noise14.mat')));
rowrank = randperm(size(H, 1));
H=H(rowrank, :);

I=cell2mat(struct2cell(load('noise15.mat')));
rowrank = randperm(size(I, 1));
I=I(rowrank, :);

J=cell2mat(struct2cell(load('noise23.mat')));
rowrank = randperm(size(J, 1));
J=J(rowrank, :);

K=cell2mat(struct2cell(load('noise24.mat')));
rowrank = randperm(size(K, 1));
K=K(rowrank, :);

L=cell2mat(struct2cell(load('noise25.mat')));
rowrank = randperm(size(L, 1));
L=L(rowrank, :);

M=cell2mat(struct2cell(load('noise34.mat')));
rowrank = randperm(size(M, 1));
M=M(rowrank, :);

N=cell2mat(struct2cell(load('noise35.mat')));
rowrank = randperm(size(N, 1));
N=N(rowrank, :);

O=cell2mat(struct2cell(load('noise45.mat')));
rowrank = randperm(size(O, 1));
O=O(rowrank, :);

% n = 8000;%80000
% A = A(1:n,:);
% B = B(1:n,:);
% C = C(1:n,:);
% D = D(1:n,:);
% E = E(1:n,:);
% F = F(1:n,:);
% G = G(1:n,:);
% H = H(1:n,:);
% I = I(1:n,:);
% J = J(1:n,:);
% K = K(1:n,:);
% L = L(1:n,:);
% M = M(1:n,:);
% N = N(1:n,:);
% O = O(1:n,:);

% Data=[A;B;C;D;E;F;G;H;I;J;K;L;M;N;O];
Data=[A;B;C;D;E];
%Data=[A;B;C;E;G;I;J;L;N];
%Data=[A;B;C;E];
rowrank = randperm(size(Data, 1));
data=Data(rowrank, :);
save('randthefeature_5.mat','data');