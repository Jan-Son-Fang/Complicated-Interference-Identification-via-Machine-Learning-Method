function C = whitenoise_convfix(sample_time)
C=zeros(sample_time*7,1);
for i=1:sample_time
    J=wgn(1024,1,0);
    J_normal=normalization(J);
    C((i-1)*7+1:(i-1)*7+7)=feature1_7(J_normal);
end