
clear, clc, close all;
tic
img = imread("minature.PNG");


a = size(img);
img = rgb2gray(img);
%img = img(1:200,1:2000);
img1 = imbinarize(img);
img1 =~ img1;
%figure, imshow(img)
figure, imshow(img1)
<<<<<<< HEAD

%B = bwboundaries(img1);
%text(10,10,strcat('\color{green}Objects Found:',num2str(length(B))));
%hold on
%for k = 1:length(B)
    %boundary = B{k};
    %plot(boundary(:,2), boundary(:,1), 'g', 'LineWidth', 0.3);
%end


%   Strzelanie i sprawdzanie czy punkt trafil na gwiazde


img = img(:,:,1);


len =size(img,2);
heigh = size(img,1);
macierz = double(img);
macierz = interp2(macierz);

img = img-10;
surf(macierz,"LineStyle","none",FaceColor="interp")
colormap('gray');


%{
k = bisekcja_pom(img,1);
%tworzy macierz zer o wielkosci takiej samej jak macierz podana(r) po czym
%jak macierz podana(r) po czym w dla X zwroconych przez interpolacje dla kolejnych linni
%przyporządkuje wartosc (dowolną)  w celu umożliwiennia jej wyswietlenia za pomoca imshow  
test = zeros(size(img));
for i = 1 : size(test,1)
    a = k(i,:);
    a = length(a);
    for c =1:a
        if isnan(k(i,c)) == false
            num = k(i,c);
            test(i,num) = -100;
        end
    end
end

a = [500,1200];
b = [400, 800];

x = [a(1),b(1)];
y = [a(2),b(2)];
X = x(1):x(2);
Y = 
%}




%{

test = test +100;
figure,imshow(img)
figure

imshow(test)

len = size(macierz,2);
len =len/8;

img1 = macierz(:,1:len);
img2 = macierz(:,len:len*2);
img3 = macierz(:,len*2:len*3);
img4 = macierz(:,len*3:len*4);
img5 = macierz(:,len*4:len*5);
img6 = macierz(:,len*5:len*6);
img7 = macierz(:,len*6:len*7);
img8 = macierz(:,len*7:len*8);


%k = zeros(size(macierz));
bis1 =  bisekcja_pom(img1,1);
bis2 =  bisekcja_pom(img2,1);
bis3 =  bisekcja_pom(img3,1);
bis4 =  bisekcja_pom(img4,1);
bis5 =  bisekcja_pom(img5,1);
bis6 =  bisekcja_pom(img6,1);
bis7 =  bisekcja_pom(img7,1);
bis8 =  bisekcja_pom(img8,1);

%tworzy macierz zer o wielkosci takiej samej jak macierz podana(r) po czym
%jak macierz podana(r) po czym w dla X zwroconych przez interpolacje dla kolejnych linni
%przyporządkuje wartosc (dowolną)  w celu umożliwiennia jej wyswietlenia za pomoca imshow  

%{
big_test = zeros(img);
for i = 1:8
    test(i) = big_test(:,(1+len*(i-1):len*i));
end
%}

test1 = zeros(size(img1));
test2 = zeros(size(img2));
test3 = zeros(size(img3));
test4 = zeros(size(img4));
test5 = zeros(size(img5));
test6 = zeros(size(img6));
test7 = zeros(size(img7));
test8 = zeros(size(img8));
big_test = [bis1 bis2 bis3 bis4 bis5 bis6 bis7 bis8] ;


macierz_bisekcji = zeros(size(macierz));

    for i = 1 : size(big_test,1)
        a = big_test(i,:);
        a = length(a);
        for c =1:a
            if isnan(big_test(i,c)) == false
                for times = 1:8
                    if c > times*625
                        padding = times*625;
                    elseif c < 625 
                        padding =0;
                    end
                end
                num = big_test(i,c);
                macierz_bisekcji(i,num+padding) = -100;
                for black = 1:7
                    macierz_bisekcji(i:i+black,num+padding)= -100;
                    macierz_bisekcji(i,num+padding:num+black+padding) = -100;
                end
            end
        end
    end


macierz_bisekcji = macierz_bisekcji +10;
figure,imshow(macierz)
figure

imshow(macierz_bisekcji)
%}

pole = liczenie_pola_gwiazd(100000,2181,2500,img1);
fprintf("Pole gwiazd w jednostkach^2 = %d", pole)

=======
b = size(img1);
%surf(img)

%
[ilosc_gwiazd] = liczenie_ilosci_gwiazd(img1,10);
fprintf("ilość gwiazd = %d", ilosc_gwiazd)
%}

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

time = toc;
disp('czas')
disp(time)


%scatter(G(:,2),G(:,1))
>>>>>>> Oliwier
