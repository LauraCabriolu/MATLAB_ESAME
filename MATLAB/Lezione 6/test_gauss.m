for n = 10:10:100
    A = 10*randn(n);
    x = ones(n,1);
    b = A*x; 
    [C,d] = gauss(A,b);
    x1 = C\d;
    err = norm(x1-x)/norm(x);
    fprintf('\nL''errore che si commette e'': %e',err)  
end
