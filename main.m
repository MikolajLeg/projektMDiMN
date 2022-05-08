clear, clc,
close all

img = imread("gwiazdy.PNG");
%imshow(img)


img = img(:,:,1);
%figure,imshow(img)
%surf(img)

len =size(img,2);
heigh = size(img,1);
macierz = double(img);
macierz = interp2(macierz);

%figure,imshow(img)
%figure,imshow(macierz)
img = img-10;
surf(macierz,"LineStyle","none",FaceColor="interp")
