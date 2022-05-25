clear, clc, close all

img = imread("lepsze_zdjecie.jpg");
figure, imshow(img)

img = img(:,:,1);
len =size(img,2);
heigh = size(img,1);
macierz = double(img);
macierz = interp2(macierz);

figure
surf(macierz,"LineStyle","none",FaceColor="interp")
colormap('gray');

