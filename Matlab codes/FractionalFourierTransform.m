function C=FractionalFourierTransform(Faf,k)
% 这个真的好难，没有看懂嘛，哭哭
[~,m] = max(Faf);
if m==1024
    C=sum(abs(Faf(1022:1024)).*abs(Faf(1022:1024)))/sum(abs(Faf).*abs(Faf));
elseif m==1
    C=sum(abs(Faf(1:3)).*abs(Faf(1:3)))/sum(abs(Faf).*abs(Faf));
else
    C=sum(abs(Faf(m-k:m+k)).*abs(Faf(m-k:m+k)))/sum(abs(Faf).*abs(Faf));
end