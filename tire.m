tire1 = imread('tire.tif');
t_imadjust = imadjust(tire1);
t_histeq =histeq(tire1);
t_adapthistteq=adapthisteq(tire1);
montage({tire1,t_imadjust,t_histeq,t_adapthistteq},'Size',[1,4])
title("Original and enhanced images: 1. Original 2.imadjust 3.Histreq 4.adapthistreq")
imhist(tire1,64)
imhist(t_imadjust,64)
imhist(t_histeq,64)
imhist(t_adapthistteq,64)