function [Nowa_Mapa] = zamalowywanie(Punkt,Nowa_Mapa)
%ZAMALOWYWANIE Summary of this function goes here
%   Detailed explanation goes here


%załozenie gwdizdy białe
x = Punkt(1);
y = Punkt(2);
%Nowa_Mapa = Nowa_Mapa;
a = size(Nowa_Mapa,1);
b = size(Nowa_Mapa,2);

if x+1 <= b || y+1 <= a  || x-1 > 0 || y-1 > 0

        if Nowa_Mapa(x+1,y) == 0
            Nowa_Mapa(x+1,y) = 1;
            %Nowy_Punkt = [x+1,y] ;
            Nowa_Mapa = zamalowywanie([x+1,y],Nowa_Mapa);
       
        %end
    
        elseif Nowa_Mapa(x+1,y+1) == 0
            Nowa_Mapa(x+1,y+1) = 1;
            %Nowy_Punkt = [x+1,y+1] ;
            Nowa_Mapa = zamalowywanie([x+1,y+1],Nowa_Mapa);
        %end
    
        elseif Nowa_Mapa(x,y+1) == 0
            Nowa_Mapa(x,y+1) = 1;
            %Nowy_Punkt = [x,y+1] ;
            Nowa_Mapa = zamalowywanie([x,y+1],Nowa_Mapa);
        
       %end
    
        elseif Nowa_Mapa(x-1,y+1) == 0
            Nowa_Mapa(x-1,y+1) = 1;
            %Nowy_Punkt = [x-1,y+1] ;
            Nowa_Mapa = zamalowywanie([x-1,y+1],Nowa_Mapa);
        %end
    
        elseif Nowa_Mapa(x-1,y) == 0
            Nowa_Mapa(x-1,y) = 1;
            %Nowy_Punkt = [x-1,y] ;
            Nowa_Mapa = zamalowywanie([x-1,y],Nowa_Mapa);
        %end
     
        elseif Nowa_Mapa(x-1,y-1) == 0 % 0 = czarny, 1 = biały
            Nowa_Mapa(x-1,y-1) = 1;
            %Nowy_Punkt = [x-1,y-1] ;
            Nowa_Mapa = zamalowywanie([x-1,y-1],Nowa_Mapa);
        %end
        elseif Nowa_Mapa(x,y-1) == 0
             Nowa_Mapa(x,y-1) = 1;
            %Nowy_Punkt = [x,y-1] ;
            Nowa_Mapa = zamalowywanie([x,y-1],Nowa_Mapa);
        %end
        elseif Nowa_Mapa(x+1,y-1) == 0
            Nowa_Mapa(x+1,y-1) = 1;
            %Nowy_Punkt = [x+1,y-1] ;
            Nowa_Mapa = zamalowywanie([x+1,y-1],Nowa_Mapa);
            % malujmy punkt (x+1,y-1) na czrno
            % wywołujemy rekurencje
        end
  
else
    return

end


imshow(Nowa_Mapa)
end


