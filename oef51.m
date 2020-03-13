syms a
f=@(a)(det([1 a 0 6;
            4 0 1 2;
            1 3 -1 6; 
            1 10 3 11])+1);
fzero(f,3)