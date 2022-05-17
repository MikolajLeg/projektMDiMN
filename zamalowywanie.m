function [Nowa_Mapa] = zamalowywanie(Punkt,Mapa_nieba)
%ZAMALOWYWANIE Summary of this function goes here
%   Detailed explanation goes here


%załozenie gwdizdy białe
x = Punkt(1);
y = Punkt(2);
Nowa_Mapa = Mapa_nieba;
a = size(Mapa_nieba,1);
b = size(Mapa_nieba,2);

if x+1 <= b || y+1 <= a  || x-1 > 0 || y-1 > 0
    if Mapa_nieba(x+1,y) == 0
        Nowa_Mapa(x+1,y) = 1;
        Nowy_Punkt = [x+1,y] ;
        Nowa_Mapa = zamalowywanie(Nowy_Punkt,Nowa_Mapa);
   
    

    elseif Mapa_nieba(x+1,y+1) == 0
        Nowa_Mapa(x+1,y+1) = 1;
        Nowy_Punkt = [x+1,y+1] ;
        Nowa_Mapa = zamalowywanie(Nowy_Punkt,Nowa_Mapa);
    

    elseif Mapa_nieba(x,y+1) == 0
        Nowa_Mapa(x,y+1) = 1;
        Nowy_Punkt = [x,y+1] ;
        Nowa_Mapa = zamalowywanie(Nowy_Punkt,Nowa_Mapa);
    


    elseif Mapa_nieba(x-1,y+1) == 0
        Nowa_Mapa(x-1,y+1) = 1;
        Nowy_Punkt = [x-1,y+1] ;
        Nowa_Mapa = zamalowywanie(Nowy_Punkt,Nowa_Mapa);
    

    elseif Mapa_nieba(x-1,y) == 0
        Nowa_Mapa(x-1,y) = 1;
        Nowy_Punkt = [x-1,y] ;
        Nowa_Mapa = zamalowywanie(Nowy_Punkt,Nowa_Mapa);
   
 
    elseif Mapa_nieba(x-1,y-1) == 0
        Nowa_Mapa(x-1,y-1) = 1;
        Nowy_Punkt = [x-1,y-1] ;
        Nowa_Mapa = zamalowywanie(Nowy_Punkt,Nowa_Mapa);
   
    elseif Mapa_nieba(x,y-1) == 0
         Nowa_Mapa(x,y-1) = 1;
        Nowy_Punkt = [x,y-1] ;
        Nowa_Mapa = zamalowywanie(Nowy_Punkt,Nowa_Mapa);
    
    elseif Mapa_nieba(x+1,y-1) == 0
        Nowa_Mapa(x+1,y-1) = 1;
        Nowy_Punkt = [x+1,y-1] ;
        Nowa_Mapa = zamalowywanie(Nowy_Punkt,Nowa_Mapa);
        % malujmy punkt (x+1,y-1) na czrno
        % wywołujemy rekurencje
    end


imshow(Nowa_Mapa)
end


