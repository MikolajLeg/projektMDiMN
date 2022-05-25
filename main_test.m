
clear, clc, close all;

img = imread("lepsze_zdjecie_jeszcze_mniejsze.PNG");

a = size(img);
img = rgb2gray(img);
img1 = imbinarize(img);
img1 =~ img1;
figure, imshow(img)
figure, imshow(img1)

kopia_img = img1;
granice = size(img1);

test = img1(513, 134);
test_punkt = [513, 134];

[kopia_img, current] = tworzenie_obramowki(kopia_img, test_punkt, granice);