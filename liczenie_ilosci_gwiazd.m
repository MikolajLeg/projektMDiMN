function [trafione] = liczenie_ilosci_gwiazd(img, liczba_strzalow)
figure, imshow(img);
axis on;
hold on;
trafione = 0;
trafione_proby = animatedline('Color', 'g', "LineStyle","none", "Marker", '+','MarkerSize', 9);
%nietrafione_proby = animatedline('Color','r', 'LineStyle','none','Marker','_','MarkerSize', 3);
a = size(img);

figure
for i = 1:liczba_strzalow
    disp(i)
    randX = randsample(a(1),1);
    randY = randsample(a(2),1);
    if img(randX, randY) == 0
        trafione = trafione + 1;
        addpoints(trafione_proby,randY, randX)
        A = [randX, randY];
        img = zamalowywanie(A, img);
        figure, imshow(img)

    end

end


