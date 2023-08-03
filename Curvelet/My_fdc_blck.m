function [s] = My_fdc_blck(X)
C=fdct_wrapping(X,1);
J=C{1,1}{1,1}; %%Level & Direction

 D=1; %D=1,3,5,7 offset Length===GLCM
 t=[0 D;-D D;-D 0;-D -D]; % offset Degree====GLCM
 i=1; %i=1==> 0 Degree ===GLCM
% %      i=2==> 45 Degree
% %      i=3==> 90 Degree
% %      i=4==> 135 Degree
    f=t(i,:);% ==GLCM
 glcm=graycomatrix(J,'offset',f);%===GLCM

%%%%
% stats = graycoprops(glcm,{'contrast'});%===GLCM
% stats = graycoprops(glcm,{'Correlation'});
 stats = graycoprops(glcm,{'Energy'});
% stats = graycoprops(glcm,{'Homogeneity'});


%%%%%%%%
% s=stats.Contrast;%===GLCM

% s=stats.Correlation;
 s=stats.Energy;
% s=stats.Homogeneity;

% s=mean(J(:));
% s=std(J(:));
%s=median(J(:));
%s=skewness(J(:));
% s=kurtosis(J(:));

end

