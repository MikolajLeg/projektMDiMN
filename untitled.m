macierz = zeros(5);

macierz(2,3) =10;
macierz(2,4) = 10;
macierz(3,3) =10;
imshow(macierz)
P = [2,3];
nowa = zamalowywanie(P,macierz);
figure,imshow(nowa)