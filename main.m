
clear, clc, close all;

img = imread('lepsze_zdjecie.jpg');
size(img)
img = rgb2gray(img);
img1 = imbinarize(img);
img1 =~ img1;
figure, imshow(img)
figure, imshow(img1)
%B = bwboundaries(img1);
%text(10,10,strcat('\color{green}Objects Found:',num2str(length(B))));
%hold on
%for k = 1:length(B)
    %boundary = B{k};
    %plot(boundary(:,2), boundary(:,1), 'g', 'LineWidth', 0.3);
%end

%   Strzelanie i sprawdzanie czy punkt trafil na gwiazde

pole = liczenie_pola_gwiazd(10000,2181,2500,img1);
fprintf("Pole gwiazd w jednostkach^2 = %d", pole)