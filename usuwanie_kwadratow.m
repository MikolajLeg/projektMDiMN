function [Nowa_mapa_nieba] = usuwanie_kwadratow(Mapa_nieba,RandX,RandY)

Ytop = RandY;
Xtop = RandX;
Xleft = RandX;
Yleft = RandY;
Xright = RandX;
Yright = RandY;
Xbottom = RandX; 
Ybottom = RandY;

%{
while Mapa_nieba(Ytop,Xtop) == 0
    Ytop = Ytop+1;
end


while Mapa_nieba(Yleft,Xleft) == 0
    Xleft = Xleft -1;
end

while Mapa_nieba(Yright,Xright) == 0
    Xright = Xright  +1;
end

while Mapa_nieba(Ybottom,Xbottom) == 0
    Ybottom = Ybottom-1;
end
%}


while Mapa_nieba(Ytop,Xtop) == 0 || Mapa_nieba(Yleft,Xleft) == 0 || Mapa_nieba(Yright,Xright) == 0 || Mapa_nieba(Ybottom,Xbottom) == 0
    Ytop = Ytop+1;
    Xleft = Xleft -1;
    Xright = Xright +1;
    Ybottom = Ybottom-1; 

    if Xleft < 1
        Xleft = 1;
    end
    
    if Xright > size(Mapa_nieba,2)
        Xright = size(Mapa_nieba,2)-1;
    end
    
    if Ytop > size(Mapa_nieba,1)
        Ytop = size(Mapa_nieba,1)-1;
    end
    
    if Ybottom < 1 
        Ybottom = 1;
    end

end







Nowa_mapa_nieba = Mapa_nieba;
Nowa_mapa_nieba(Ybottom:Ytop,Xleft:Xright) = 1;
figure, imshow(Nowa_mapa_nieba)






end
