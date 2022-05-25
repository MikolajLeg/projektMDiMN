function [img1, ilosc_gwiazd] = liczenie_ilosc_gwiazd_matlab(img1)


%   Funkcja bwboundaries zwraca wspolrzędne punktow granicznych dla gwiazd
%   dlugosc wektora ilosc_gwiazd okresla ilosc znalezionych gwiazd
ilosc_gwiazd = bwboundaries(img1);

imshow(img1)
%   Dodanie napisu na obrazie wskazującego na ilosc znalezionych gwiazd
text(10,10, strcat('\color{green}Znalezione gwiazdy:', num2str(length(ilosc_gwiazd))))
hold on

%   Petla majaca na celu dodanie obwodki wokol wszystkich wykrytych gwiazd
for k = 1:length(ilosc_gwiazd)
    granica = ilosc_gwiazd{k};
    plot(granica(:,2), granica(:,1),'g','LineWidth',0.2)
end
end
