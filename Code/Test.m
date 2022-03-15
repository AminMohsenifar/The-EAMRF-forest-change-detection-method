clc
clear
close all
% Amin Mohsenifar, a.mohsenifar97@gmail.com.
% Please read the file "README" before running the present code.
%% Select the tiff-formatted pre-change, post-change, and ground truth (test) images along with the sensor type
ImgName1='D1_S2_20200625.tif';
ImgName2='D1_S2_20200630.tif';
TestName='D1_Test.tif';
Sensor='S2';
%--------------------------------------------
Image1=double(imread(ImgName1));
Image2=double(imread(ImgName2));
TestData=imread(TestName);
%% Step 1
tic
[D_F]=GenerateD_F(Image1,Image2,Sensor);
%% Step 2
[L_EAMRF]=EAMRF(D_F);
EAMRFtime=toc;
%% Validation
Evaluation(TestData,L_EAMRF);
