%tentativa #002 Desafio IVC - segmentação de imagens
i = imread('testeseg.jpg');
i2 = imsmooth(i,'median');
figure;imshow(i2);

bckgrd = imopen(i2, strel('disk',220,0));
figure;imshow(bckgrd);

bwbck = im2bw(bckgrd,1);
figure;imshow(bwbck);

i3 = imresize(i2,[254 317]);
i4 = imsubtract(i3, bwbck);
figure;imshow(i4);