function [Nowa_Mapa] = nowe_zamalowywanie(Punkt,Nowa_Mapa)
%NOWE_ZAMALOWYWANIE Summary of this function goes here
%   Detailed explanation goes here
x = Punkt(2);
y = Punkt(1);
maxX = x;
ytest = y;


width = size(Nowa_Mapa,1);
length = size(Nowa_Mapa,2);

while maxX+1 < length
    if Nowa_Mapa(ytest,maxX+1) == 0
        maxX = maxX +1;
    else
        break
    end
end

while ytest<width && maxX<length && maxX>0
    if Nowa_Mapa(ytest,maxX+1) == 0
        maxX = maxX+1;
    elseif Nowa_Mapa(ytest+1,maxX+1) == 0
        maxX = maxX+1;
        ytest = ytest+1;
    elseif Nowa_Mapa(ytest-1,maxX+1) == 0
        maxX = maxX+1;
        ytest = ytest-1;
    elseif Nowa_Mapa(ytest-1,maxX) == 0
        ytest= ytest-1;
    else
        break
    end
end



while y < width
    if Nowa_Mapa(y+1,x) == 0 
        y = y+1;
    else
        break
    end
end

while y<width && x<length && x>0
    if Nowa_Mapa(y+1,x) == 0
        y = y+1;
        if x > maxX
            maxX = x;
        end
    elseif Nowa_Mapa(y+1,x+1) == 0
        x = x+1;
        y = y+1;
        if x > maxX
            maxX = x;
        end
    elseif Nowa_Mapa(y+1,x-1) == 0
        x = x-1;
        y = y+1;
        if x > maxX
            maxX = x;
        end
    elseif Nowa_Mapa(y,x+1) == 0
        x = x+1;
        if x > maxX
            maxX = x;
        end
    else
        break
    end
end


while Nowa_Mapa(y,x) == 0
    Nowa_Mapa(y,x) =1;
    while x-1 > 0
        if Nowa_Mapa(y,x-1) == 0
            Nowa_Mapa(y,x-1) = 1 ;
            x = x-1;
            imshow(Nowa_Mapa)
        else
            break
        end
    end
    
    if y-1 > 0
        y = y-1;
    end


    while x-1 > 0
        if Nowa_Mapa(y,x-1) == 0
            x = x-1;
        else
            break
        end
    end

    while x +1 < maxX
        if Nowa_Mapa(y,x+1) == 1
            x = x + 1;
        else
            break
        end
    end

    while x+1 <= maxX
        if Nowa_Mapa(y,x+1) == 0
            x = x + 1;
        else
            break
        end
    end

end



end

