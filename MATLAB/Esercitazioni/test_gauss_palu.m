clear,clc

for n=100:100:1000
    A = rand(n);
    x = ones(n,1);
    b = A*x;

    [P,L,U] = gauss_palu(A);
    %Ly = Pb -> y = L^-1*P*b
    y = L\(P*b); 
    %Ux = y
    x1 = U\y; 

    err = norm(x1-x)/norm(x);
    c = cond(A);
    fprintf('\nL''errore che si commette e'': %e',err);
    fprintf('\nIl condizionamento della matrice A di dimensione %d e'': %f', n, c);
end