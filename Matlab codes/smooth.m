JNR = linspace(-5,20,6);
for i=1:6
    D=cell2mat(struct2cell(load(['conv_image',num2str(JNR(i)),'dB-rand.mat'])));
    DD=zeros(80000,1024);
    for j=1:80000
        DD(j,:)=smoothdata(D(j,1:1024));
    end
    save(['conv_realimage',num2str(JNR(i)),'dB-rand.mat'],'DD');
end

% plot(smoothdata(smoothdata(smoothdata(smoothdata(D(1,:))))))