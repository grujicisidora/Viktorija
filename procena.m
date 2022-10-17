function rezultat = procena(matrica)
   cilj = [1 2 3; 8 0 4; 7 6 5];
   rastojanje = 0;
   rasporedjenost = 0;
   for i=1:8
       [a1,b1] = find(matrica == i);
       [a2,b2] = find(cilj == i);
       rastojanje = rastojanje + abs(a1-a2) + abs(b1-b2);
       if (a1 == 2) && (b1 == 2)
           rasporedjenost = rasporedjenost + 1;
       else
           [s1,t1] = obilazak(a1, b1);
           [s2,t2] = obilazak(a2, b2);
           if matrica(s1, t1) == cilj(s2, t2)
               rasporedjenost = rasporedjenost + 0;
           else
               rasporedjenost = rasporedjenost + 2;
           end
       end  
   end
   rezultat = rastojanje + 3*rasporedjenost;
end