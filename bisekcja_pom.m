function [macierz_X_zera] = bisekcja_pom(macierzObrazu,dokladnosc)
%BISEKCJA_POM funkcja pomocnicza
len = size(macierzObrazu,2);
lines = size(macierzObrazu,1);
macierz_X_zera = NaN(lines,len);



wektorX = (1 :dokladnosc:len);
len2 = length(wektorX);
mid = ceil(len2/2);
Xprawy = wektorX(mid: end);
Xlewy = wektorX(1:mid-1);

% wywołuje petle ktora uzywa funkcji bisekcji dla kolejnych połowek linii macierzy wartosci  
for i = 1:lines
    wektorWartosci = macierzObrazu(i,:);
    
    Wprawy = wektorWartosci(mid:end);
    Wlewy = wektorWartosci(1:mid-1);
    
    left = bisekcja(Xlewy,Wlewy) ;
    right = bisekcja(Xprawy,Wprawy);
    countl = size(left,2); 
    countr = size(right,2);
    for c =1: countl
        macierz_X_zera(i,c) = left(c);
    end
    for c = 1 : countr
        macierz_X_zera(i,c+countl) = right(c);
    end
        
end
    
end
