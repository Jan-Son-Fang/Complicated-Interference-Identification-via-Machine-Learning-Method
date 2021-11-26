h1 = openfig('AverageSpectrumFlatnessCoefficient.fig','reuse'); % open figure  
D1=get(gca,'Children'); %get the handle of the line object  
XData1=get(D1,'XData'); %get the x data  
YData1=get(D1,'YData'); %get the y data  
Data1=[XData1' YData1']; %join the x and y data on one array nx2  

figure;  
for i=1:15
    plot( XData1{i}, YData1{i});
    hold on
end
legend('singletone','multitone','linearsweep','partfreband','fremodula','1+2','1+3','1+4','1+5','2+3','2+4',...
    '2+5','3+4','3+5','4+5','Location','Northwest');  
xlabel('JNR/dB');  
title('Average Spectrum Flatness Coefficient')  
