clc;clear ;close all;
m=17;
%  mkdir  ../results_Contrast m=11_LC=1_AC=1_D=1_t=1
for i=1:48
    pathname='D:\RUN_Paper\training\14\orig\FLAIR.nii\';
    filename=[num2str(i),'FLAIR.mat'];
load([pathname,filename]);
A=J(:,:,1);
%%
fun1 = @(x)My_fdc_blck(x); %fun1: Autocorrelation
B1 = nlfilter(A,[m m],fun1);%Autocorrelation
% B1=uint8(B1);
save(['D:\RUN_Paper\Results\14\orig\FLAIR\GLCM\Energy\m=17\L=1,AC=1,D=1,T=1\',filename],'B1')
% imwrite(imadjust(B1),['E:\results_Mean\m=17_LC=2_AC=1_Mean\imadjust',filename])

% montage({A,B1},'ThumbnailSize',[])
%  title(['Curvelet (Left) vs. Original(Right)'])
end
