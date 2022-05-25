function [grad] = grad(macierzWartosci,varargin)
%GRAD zwraca gradient funkcji Z= f( X,Y))
% Z podany jest jako macierz 
% X/Y podane sa jako wektory, mozliwe jest podanie tylko jednego

dlug = size(macierzWartosci);
szer = dlug(1,1);
dlug = dlug(1,2);
macierzWartosci = double(macierzWartosci);


% wyodrebnia wektorX i/lub wektor Y ze zbiory dodatkowych wektrow
 p = inputParser;
   addOptional(p,'wektorX',NaN,@isvector);
   addOptional(p,'wektorY',NaN,@isvector);
   parse(p,varargin{:});
   h = p.Results;
   wektorX = h.wektorX;
   wektorY = h.wektorY;
   
%sprawdza czy wektor X byl podany
if  isnan(wektorX)
    checkX =0;
else
    checkX =1;
    sizX = size(wektorX);
    sizX = sizX(1,1);
    lenX = length(wektorX);
    %sprawdza czy wektor jest wierszzowy czy kolumnowy i zmienia na
    %wierszowy jesli to konieczne
    if sizX > lenX
        wektorX = wektorX';
        lenX = length(wektorX);
    end
    if lenX ~= dlug
        error("dlugosc wektoraX nie odpowiada liczbie odpowiadajacych wartosci")
    end
end

%sprawdza czy wektor Y byl podany 
if  isnan(wektorY)
    checkY =0;
else
    checkY =1;
    sizY = size(wektorY);
    sizY = sizY(1,1);
    lenY = length(wektorY);
    if sizY > lenY
        wektorY = wektorY';
        lenY = length(wektorY);
    end
    if lenY ~= szer
        error("dlugosc wektoraY nie odpowiada liczbie odpowiadajacych wartosci")
    end
end


dim = checkX + checkY;
% na wypadek gdy zaden wektor nie byl podany
if checkX + checkY == 0
    error("nalezy podac co najmniej jeden wektor wspolrzednych")
end

grad =zeros(szer,dlug,dim);

if checkX == 1
    %dla pierwszegu punktu w wektorze gradientu przyporządkowuje róznice wartosci
    %miedzy punktem pierwszy a drugim a następnie dzili przez dlugosc kroku
    %miedzy nimi
    for w = 1:szer
        grad(w,1,1) =  (macierzWartosci(w,2) - macierzWartosci(w,1))./(wektorX(2) - wektorX(1));
        if dlug >= 3
            for i = 3 :dlug
                %dla kolejnych punktu w wektorze gradientu przyporządkowuje róznice wartosci
                %miedzy punktem poprzednim a nastepnym
                grad(w,i-1,1) =  (macierzWartosci(w,i) - macierzWartosci(w,i-2))./(wektorX(i) - wektorX(i-2));
            end
        else
            i=2;
        end
        grad(w,i,1) =  (macierzWartosci(w,i) - macierzWartosci(w,i-1))./(wektorX(i) - wektorX(i-1));
        %dla ostatniego punktu w wektorze gradientu przyporządkowuje róznice wartosci
        %miedzy punktem przedostatnim a ostatnim
    end
end

%to samo ale dla Y
if checkY == 1
    for w = 1:dlug
        grad(1,w,2) =  (macierzWartosci(2,w) - macierzWartosci(1,w))./(wektorY(2) - wektorY(1));
        if dlug >= 3
            for i = 3 :szer
                grad(i-1,w,2) =  (macierzWartosci(i,w) - macierzWartosci(i-2,w))./(wektorY(i) - wektorY(i-2));
            end
        else
            i=2;
        end
        grad(i,w,2) =  (macierzWartosci(i,w) - macierzWartosci(i-1,w))./(wektorY(i) - wektorY(i-1));
    end
end



end

