clc;clear all;close all;
A=imread('pout.tif');

%% Parameters
D=1; %D=1,3,5,7 offset Length
t=[0 D;-D D;-D 0;-D -D]; % offset Degree
i=1; %i=1==> 0 Degree
     %i=2==> 45 Degree
     %i=3==> 90 Degree
     %i=4==> 135 Degree
f=t(i,:);
m=9; %m=3,5,9

%%
fun1 = @(x)glcmautoc(x,f); %fun1: Autocorrelation
B1 = nlfilter(A,[m m],fun1);%Autocorrelation

%%
fun2 = @(x)glcmcontrast(x,f); %fun2: Contrast
B2 = nlfilter(A,[m m],fun2); %Contrast

%%
fun3 = @(x)glcmcorrm(x,f); % fun3: Correlation
B3 = nlfilter(A,[m m],fun3); %Correlation

%%
fun4 = @(x)glcmcorrp(x,f); % fun4: Correlation: [1,2]
B4 = nlfilter(A,[m m],fun4);% Correlation: [1,2]
%%
fun5 = @(x)glcmcprom(x,f); % fun 5: Cluster Prominence: [2]
B5 = nlfilter(A,[m m],fun5);% Cluster Prominence: [2]
%%
fun6 = @(x)glcmcshad(x,f); % fun6: Cluster Shade: [2]
B6 = nlfilter(A,[m m],fun6);% Cluster Shade: [2]
%%
fun7 = @(x)glcmdenth(x,f); % fun7: Difference entropy [1]
B7 = nlfilter(A,[m m],fun7);% Difference entropy [1]
%%
fun8 = @(x)glcmdissi(x,f);% fun8: Dissimilarity: [2]
B8 = nlfilter(A,[m m],fun8);% Dissimilarity: [2]
%%
fun9 = @(x)glcmdvarh(x,f);% fun9: Difference variance [4]
B9 = nlfilter(A,[m m],fun9);% Difference variance [4]
%%
fun10 = @(x)glcmenerg(x,f);% fun10: Energy: matlab / [1,2]
B10 = nlfilter(A,[m m],fun10);% fun10: Energy: matlab / [1,2]

%%
fun11 = @(x)glcmentro(x,f);% fun11: Entropy: [2]
B11 = nlfilter(A,[m m],fun11);% Entropy: [2]

%%
fun12 = @(x)glcmhomom(x,f); % fun12: Homogeneity: matlab
B12 = nlfilter(A,[m m],fun12);% Homogeneity: matlab

%%
fun13 = @(x)glcmhomop(x,f); % fun13: Homogeneity: [2]
B13 = nlfilter(A,[m m],fun13);% fun13: Homogeneity: [2]
%%
fun14 = @(x)glcmidmnc(x,f);% fun14: Inverse difference moment normalized [3]
B14 = nlfilter(A,[m m],fun14);% fun14: Inverse difference moment normalized [3]

%%
fun15 = @(x)glcmindnc(x,f);% fun15: Inverse difference normalized (INN) [3]
B15 = nlfilter(A,[m m],fun15);% fun15: Inverse difference normalized (INN) [3]
%%
fun16 = @(x)glcminf1h(x,f);% fun16: Information measure of correlation1 [1]
B16 = nlfilter(A,[m m],fun16);% fun16: Information measure of correlation1 [1]

%%
fun17 = @(x)glcmmaxpr(x,f);% fun17: Maximum probability: [2]
B17 = nlfilter(A,[m m],fun17);% fun17: Maximum probability: [2]

%%
fun18 = @(x)glcmsavgh(x,f); % fun18: Sum average [1]
B18 = nlfilter(A,[m m],fun18);% fun18: Sum average [1]

%%
fun19 = @(x)glcmsenth(x,f);% fun19: Sum entropy [1]
B19 = nlfilter(A,[m m],fun19);% fun19: Sum entropy [1]

%%
fun20 = @(x)glcmsosvh(x,f); % fun20: Sum of sqaures: Variance [1]
B20 = nlfilter(A,[m m],fun20);% fun20: Sum of sqaures: Variance [1]

%%
fun21 = @(x)glcmsvarh(x,f);% fun21: Sum variance [1]
B21 = nlfilter(A,[m m],fun21);% fun21: Sum variance [1]

%%
fun22 = @(x)glcminf2h(x,f);% fun 22: Informaiton measure of correlation2 [1]
B22 = nlfilter(A,[m m],fun22);% fun 22: Informaiton measure of correlation2 [1]


%%
