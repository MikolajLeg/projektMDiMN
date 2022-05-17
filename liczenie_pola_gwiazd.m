function [pole] = liczenie_pola_gwiazd(losowanie, maxX, maxY, img)
%nanoszenie prób na wykres
imshow(img);
axis on;
hold on;
trafione = 0;
trafione_proby = animatedline('Color', 'g', "LineStyle","none", "Marker", '+','MarkerSize', 3);
nietrafione_proby = animatedline('Color','r', 'LineStyle','none','Marker','_','MarkerSize', 3);

%   Strzelanie i sprawdzanie czy punkt trafil na gwiazde
for i = 1:losowanie
    randX = randsample(maxX,1);
    randY = randsample(maxY,1);
    if img(randX,randY) == 0
        trafione = trafione + 1;
        addpoints(trafione_proby, randY, randX);
    else
        addpoints(nietrafione_proby, randY, randX);
    end

end
pole = (trafione/losowanie) * (maxX * maxY);
end

