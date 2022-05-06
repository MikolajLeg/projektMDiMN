clear, close all

img = imread('gwiazdy.png');
imshow(img)




img = img(:,:,1);
figure,imshow(img)

len =size(img,2);
heigh = size(img,1);
img = double(img);
macierz = interp2(img);
figure,imshow(img)
figure,imshow(macierz)
img = img-10;
surf(macierz)