
clear, clc, close all;

img = imread("lepsze_zdjecie_jeszcze_mniejsze.PNG");

a = size(img);
img = rgb2gray(img);
img1 = imbinarize(img);
img1 =~ img1;
figure, imshow(img)
figure, imshow(img1)

ilosc_gwiazd = liczenie_ilosci_gwiazd(img1,100);
fprintf("ilość gwiazd = %d", ilosc_gwiazd)