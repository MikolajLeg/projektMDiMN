function [img, current] = tworzenie_obramowki(img, punkt, granice)
%   tworzenie kwadratowej ramki wokol kazdej napotkanej gwiazdy

y = punkt(1);
x = punkt(2);

granica_y = granice(1);
granica_x = granice(2);

%   Zmienna okreslajaca punkt w ktorym jestesmy
current = [y,x];

%   Stworzenie zmiennych przechowujacych granice gwiazdy
highest_x = 0;
lowest_x = 0;
highest_y = 0;
lowest_y = 0;

%   Argument prowadzący punkt badany na krawędz gwiazdy
checker = 0;
while checker == 0
    if current(2) - 1 == 0
        checker = 1;
    elseif img(current(1), current(2)-1) == 1
        checker = 1;
    else
        current(2) = current(2) - 1;
    end
end
%   Nadanie poczatkowych wartosci do porownania
highest_x = current(2);
lowest_x = current(2);
highest_y = current(1);
lowest_y = current(1);

%   Stworzenie checkpointa by wiedziec kiedy gwiazda zostala w pelni
%   okrazona

checkpoint = current;

% Reczne wybranie kolejnego punktu bo miec nowy current. Potrzebne do petli
% while

if current(2) - 1 == 0 && current(1) - 1 == 0
    if img(current(1), current(2) + 1) == 0
        current(2) = current(2) + 1;
    elseif img(current(1) + 1, current(2) + 1) == 0
        current(1) = current(1) + 1;
        current(2) = current(2) + 1;
    elseif img(current(1) + 1, current(2)) == 0
        current(1) = current(1) + 1;
    end

elseif current(1) - 1 == 0 && current(2) + 1 > granica_x
    if img(current(1) + 1, current(2)) == 0
        current(1) = current(1) - 1;
    elseif img(current(1) + 1, current(2) - 1) == 0
        current(1) = current(1) + 1;
        current(2) = current(2) - 1;
    end

elseif current(1) - 1 == 0
    if img(current(1), current(2) + 1) == 0
        current(2) = current(2) + 1;
    elseif img(current(1) + 1, current(2) + 1) == 0
        current(1) = current(1) + 1;
        current(2) = current(2) + 1;
    elseif img(current(1) + 1, current(2)) == 0
        current(1) = current(1) + 1;
    end

elseif current(1) + 1 > granica_y && current(2) - 1 == 0
    if img(current(1) - 1, current(2)) == 0
        current(1) = current(1) + 1;
    elseif img(current(1) - 1, current(2) + 1) == 0
        current(1) = current(1) - 1;
        current(2) = current(2) - 1;
    elseif img(current(1), current(2) + 1)
        current(2) = current(2) + 1;
    end

elseif current(1) + 1 > granica_y && current(2) + 1 > granica_x
    if img(current(1) - 1, current(2) - 1) == 0
        current(1) = current(1) - 1;
        current(2) = current(2) - 1;
    elseif img(current(1) - 1, current(2)) == 0
        current(1) = current(1) - 1;
    end

elseif current(1) + 1 > granica_y
    if img(current(1) - 1, current(2) - 1) == 0
        current(1) = current(1) - 1;
        current(2) = current(2) - 1;
    elseif img(current(1) - 1, current(2)) == 0
        current(1) = current(1) - 1;
    elseif img(current(1) - 1, current(2) + 1) == 0
        current(1) = current(1) - 1;
        current(2) = current(2) + 1;
    elseif img(current(1), current(2) + 1) == 0
        current(2) = current(2) + 1;
    end

elseif current(2) - 1 == 0
    if img(current(1) - 1, current(2)) == 0
        current(1) = current(1) - 1;
    elseif img(current(1) - 1, current(2) + 1) == 0
        current(1) = current(1) - 1;
        current(2) = current(2) + 1;
    elseif img(current(1), current(2) + 1) == 0
        current(2) = current(2) + 1;
    elseif img(current(1) + 1, current(2) + 1) == 0
        current(1) = current(1) + 1;
        current(2) = current(2) + 1;
    elseif img(current(1) + 1, current(2)) == 0
        current(1) = current(1) + 1;
    end

elseif current(2) + 1 > granica_x
    if img(current(1) + 1, current(2)) == 0
        current(1) = current(1) + 1;
    elseif img(current(1) + 1, current(2) - 1) == 0
        current(2) = current(2) - 1;
    end

else
    if img(current(1) - 1, current(2) - 1) == 0
        current(1) = current(1) - 1;
        current(2) = current(2) - 1;
    elseif img(current(1) - 1, current(2)) == 0
        current(1) = current(1) - 1;
    elseif img(current(1) - 1, current(2) + 1) == 0
        current(1) = current(1) - 1;
        current(2) = current(2) + 1;
    elseif img(current(1), current(2) + 1) == 0
        current(2) = current(2) + 1;
    elseif img(current(1) + 1, current(2) + 1) == 0
        current(1) = current(1) + 1;
        current(2) = current(2) + 1;
    elseif img(current(1) + 1, current(2)) == 0
        current(1) = current(1) + 1;
    elseif img(current(1) + 1, current(2) - 1) == 0
        current(1) = current(1) + 1;
        current(2) = current(2) - 1;
    end
end

%   TODO


        



end

