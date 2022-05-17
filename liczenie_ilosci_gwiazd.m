function [trafienia] = liczenie_ilosci_gwiazd(img, liczba_strzalow)
imshow(img);
axis on;
hold on;
trafione = 0;
trafione_proby = animatedline('Color', 'g', "LineStyle","none", "Marker", '+','MarkerSize', 3);
%nietrafione_proby = animatedline('Color','r', 'LineStyle','none','Marker','_','MarkerSize', 3);
a = size(img)


for i = 1:liczba_strzalow
    randX = randsample(a(1),1);
    randY = randsample(a(2),1);
    if img(randX, randY) == 0
        trafione = trafione + 1;
        addpoints(trafione_proby,randY, randX)
        img = zamalo
    else

    end

end


