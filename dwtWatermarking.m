clc;
clear all;
alpha=5; %alpha����ˮӡ��ǿ��
watermarkImpath=['C:\Users\xpz\Desktop\��.bmp';'C:\Users\xpz\Desktop\��.bmp';'C:\Users\xpz\Desktop\��.bmp'];%��Ƕ�������ͼ��3*48*48
sourceImagepath='C:\Users\xpz\Desktop\lena_std.tif';%ԭͼ��
watermarkedpath='C:\Users\xpz\Desktop\lena_std_watermarked.tif';%Ƕ��ˮӡ���ͼ��Ĵ洢·��
sourceimage=imread(sourceImagepath);
for i=1:3;
    watermarkIm(:,:,i)=imread(watermarkImpath(i,:));
end
% figure()
% for i=1:3
% subplot(1,3,i);
% imshow(watermarkIm(:,:,i));
% end
watermarkedIm=watermarkEmbed(sourceimage,watermarkIm,alpha); 
imwrite(watermarkedIm,watermarkedpath);
imshow(watermarkedIm);



