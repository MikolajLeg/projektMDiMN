clear, clc,
close all

img = imread("gwiazdy.PNG");
%imshow(img)


img = img(:,:,1);


len =size(img,2);
heigh = size(img,1);
macierz = double(img);
macierz = interp2(macierz);

img = img-10;
surf(macierz,"LineStyle","none",FaceColor="interp")
colormap('gray');
