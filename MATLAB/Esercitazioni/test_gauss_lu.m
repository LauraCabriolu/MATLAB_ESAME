for n =100:100:1000
    A = rand(n); %genero una matrice quadrata
    x = ones(n,1); %vettore colonna delle soluzioni
    b = A*x; %vettore dei termini noti 

    [L,U] = gauss_lu(A); %richiamo la funzione
    y = L\b; %Ly = b
    x1 = U\y; % Ux = y

    err = norm(x1-x)/norm(x);
    c = cond(A);
    fprintf('\nL''errore che si commette e'': %e',err);
    fprintf('\nIl condizionamento della matrice A di dimensione %d e'': %f', n, c); 
end    