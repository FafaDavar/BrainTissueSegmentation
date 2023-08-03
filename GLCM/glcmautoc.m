function s = glcmautoc(A,f)
grayt=graycomatrix(A,'offset',f);
stats = GLCM_Features1(grayt,0);
s=stats.autoc;