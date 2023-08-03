function s = glcmcshad(A,f)
grayt=graycomatrix(A,'offset',f);
stats = GLCM_Features1(grayt,0);
s=stats.cshad;