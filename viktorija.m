function izlaz = viktorija(ulaznaMatrica)
    cilj = [1 2 3; 8 0 4; 7 6 5];
    if ulaznaMatrica == cilj
        izlaz = ulaznaMatrica;
        disp('Slagalica je resena!');
    else
        [x,y] = find(ulaznaMatrica == 0);
        pozicije = [x-1 x+1 x x; y y y-1 y+1];
        procene = [100 100 100 100];
        for i=1:4
            trenutna = pozicije(:,i);
            if (trenutna(1,1) == 4)||(trenutna(1,1) == 0)||(trenutna(2,1) == 4)||(trenutna(2,1) == 0)
                continue
            else
                A = ulaznaMatrica;
                n = A(trenutna(1,1),trenutna(2,1));
                A(x,y) = n;
                A(trenutna(1,1),trenutna(2,1)) = 0;
                procene(i) = procena(A);
            end
        end
        optimum = min(procene);
        adresa = find(procene == optimum);
        finalna = pozicije(:, adresa);
        m = ulaznaMatrica(finalna(1,1), finalna(2,1));
        ulaznaMatrica(x,y) = m;
        ulaznaMatrica(finalna(1,1), finalna(2,1)) = 0;
        disp(ulaznaMatrica);
        izlaz = viktorija(ulaznaMatrica);
    end    
end



