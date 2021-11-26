PSD=cell2mat(struct2cell(load(['conv_PSDimage20dB-rand.mat'])));
data=zeros(80000,30*65);
for i=1:30
    % set(gca,'Visible','off')
    h=figure(i);
    plot(PSD(i,:))
    set(h,'visible','off');
    axis([0 1024 0 4])
    set(gcf,'color','w');
    saveas(i,['a',num2str(i),'.jpg']);
    picture_1 = imread(['a',num2str(i),'.jpg']);
    picture_2=im2gray(picture_1);
    picture_4 = imcrop(picture_2,[131,61,649,299]);
    fun = @(block_struct) imresize(block_struct.data,0.1);
    picture_B = blockproc(picture_4,[100 100],fun);
    imwrite(picture_B,['c',num2str(i),'.jpg']);
    for m =1:30
        data(i,65*(m-1)+1:65*m)=picture_B(m,:);
    end
    disp(i);
end
