clc;
clear all;
sourceImagepath='lena_std.tif';  %ԭͼ��·��
watermarkedpath='lena_std_watermarked.tif'; %����ȡˮӡ��ͼ���·��
sourceimage=imread(sourceImagepath);
watermarkedimage=imread(watermarkedpath);
%watermarkedimage = imnoise(watermarkedimage,'gaussian',0,0.01); %���ø����Ӹ�˹��������
wmExtra=watermarkExtra(watermarkedimage,sourceimage);
%��ʾ��ȡ��������ͼ��
figure();
for i=1:3
    subplot(1,3,i);
    imshow(wmExtra(:,:,i));
end