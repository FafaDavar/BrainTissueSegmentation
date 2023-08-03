function s = glcminf2h(A,f)
grayt=graycomatrix(A,'offset',f);
stats = GLCM_Features1(grayt,0);
s=stats.inf2h;