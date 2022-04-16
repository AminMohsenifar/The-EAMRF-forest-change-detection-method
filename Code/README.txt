1. Contact and Citation

* If you utilize any part of the provided codes or free datasets in scientific research or as part of a more extensive software system, please provide the following citation in related publications or technical documentation:

Mohsenifar, A., Mohammadzadeh, A., Moghimi, A. and Salehi, B., 2021, A Novel Unsupervised Forest Change Detection Method Based on The Integration of a Multiresolution Singular Value Decomposition Fusion and an Edge-Aware Markov Random Field Algorithm. International Journal of Remote Sensing, doi:10.1080/01431161.2021.1995075.

*** If you have any queries, don't hesitate and feel free to contact me at "a.mohsenifar97@gmail.com".
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

2. Description

2.1. The present source code contains two major steps. In the first step, an integrated difference image is formed by fusing two difference images computed based on the spectral (reflectance) data (Ds) and vegetation indices (Dv). In this regard, it's worth mentioning that any of the vegetation indices must be normalized between 0 and 1 before they are used to compute the vegetation indices-based difference image (Dv). In the second step, the EAMRF model is applied to the fused difference image in order to produce a binary change map. As a remark, the MATLAB code of the second step (i.e. EAMRF function) could also be evaluated in any unsupervised change detection research as a comparative decision-making algorithm.

     The inputs required to run the code involve the variables 'ImgName1', 'ImgName2', 'TestName', and 'Sensor', where the three formers characterize the names of the tiff-formatted pre-change, post-change, and ground truth images, respectively, and the latter also signifies the satellite sensor name. In detail, the ground truth data signifies the changed and unchanged pixels labeled as 1 and 2, respectively. Moreover, the sensors for which the present code is developed are Sentinel-2 (S2), Landsat-5 (L5), and Landsat-8 (L8), whose bands must be in the following order of priority:
        
        - Sentinel-2: 1. Coastal aerosol/2. Blue/3. Green/4. Red/5. Red edge/6. Red edge/7. Red edge/8. NIR/8A. Red edge/9. Water vapor/11. SWIR-1/ 12. SWIR-2.
                      Indeed, the 10th band (i.e. Cirrius) has been removed.
        
        - Landsat-5: 1. Blue/2. Green/3. Red/4. NIR/5. SWIR-1/6. TIRS/7. SWIR-2.

        - Landsat-8: 1. Coastal aerosol/2. Blue/3. Green/4. Red/5. NIR/6. SWIR-1/7. SWIR-2.

        *** Note that if your sensor type is not of the three above-mentioned ones or its bands don't correspond to the above order of priority, you are kindly requested to contact me at the above email address. I assure you that I'm ready to reconcile my code with your datasets in a few hours.

        
2.2. The function 'GenerateD_F' takes the variables 'Image1', 'Image2', and 'Sensor' to compute the proposed difference image 'D_F'.

2.3. The function 'EAMRF' returns the binary change map 'L_EAMRF' in which the labels 1 and 2 represent the changed and unchanged areas, respectively.

2.4. The function 'Evaluation' compares the produced change map with the ground truth data to provide a quantitative validation report.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Best.

Amin Mohsenifar
