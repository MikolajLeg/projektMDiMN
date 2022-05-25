
clear, clc, close all;
tic
img = imread("lepsze_zdjecie_jeszcze_mniejsze.PNG");
c = img(5,8);

a = size(img);
img = rgb2gray(img);
%img = img(1:200,1:2000);
img1 = imbinarize(img);
img1 =~ img1;
%figure, imshow(img)
%figure, imshow(img1)
b = size(img1);
%surf(img)

%
[ilosc_gwiazd] = liczenie_ilosci_gwiazd(img1,100);
fprintf("ilość gwiazd = %d", ilosc_gwiazd)
%}

c = usuwanie_kwadratow(img,72,31);



%{
len = size(img,1);
wid = size(img,2);
WektorX = 1:len;
WektorY = 1:wid;

Gradient_img = grad(img,WektorY,WektorX);
surf(Gradient_img(:,:,1))
figure
surf(Gradient_img(:,:,2))
figure
surf(Gradient_img(:,:,1),Gradient_img(:,:,2))


Gradient_Gradient = grad(Gradient_img(:,:,1),WektorY, WektorX);

Final_grad = Gradient_Gradient(:,:,2);
figure
surf(Final_grad)
%}

disp(" ")
time = toc;
disp('czas')
disp(time)


%scatter(G(:,2),G(:,1))