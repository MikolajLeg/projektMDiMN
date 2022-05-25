function [highest_x,lowest_x,highest_y,lowest_y] = szukaj_ekstremow(highest_x,lowest_x,highest_y,lowest_y, current1, current2)

if current1 > highest_y
    highest_y = current1;
elseif current1 < lowest_y
    lowest_y = current1;
end
if current2 > highest_x
    highest_x = current2;
elseif current2 < lowest_x
    lowest_x = current2;
end
end

