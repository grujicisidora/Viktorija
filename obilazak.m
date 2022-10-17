function [k,p] = obilazak(sledecix, sledeciy)
   if (sledecix == 1) && (sledeciy == 1)
       k = 1;
       p = 2;
   elseif (sledecix == 1) && (sledeciy == 2)
       k = 1;
       p = 3;
   elseif (sledecix == 2) && (sledeciy == 1)
       k = 1;
       p = 1;
   elseif (sledecix == 2) && (sledeciy == 3)
       k = 3;
       p = 3;
   elseif (sledecix == 3) && (sledeciy == 1)
       k = 2;
       p = 1;
   elseif (sledecix == 3) && (sledeciy == 2)
       k = 3;
       p = 1;
   else
      k = 3;
      p = 2;     
   end      
end