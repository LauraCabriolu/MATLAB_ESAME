for n = 100:100:1000
    A = rand(n);%creo una matrice nxn
    %per far si che il metodo di gauss-seidel converga:
    % - strettamente diagonalmente dominante (somma degli elementi della
    %   riga è minore dell'elemento nella diagonale)
    
    A = A - diag(diag(A)); %rimuovo la diagonale dalla matrice A
    s = sum(abs(A')); %faccio la somma delle righe in valore assoluto 
    % della matrice A
    s = s*3; %maggioro il vettore
    A = A + diag(s); %inserisco la diagonale con i valori di s nella
    %diagonale della matrice A
    
    x = ones(n,1); %creo un vettore n di 1
    b = A*x; %calcolo il vettore dei termini noti
    
    x0 = zeros(n,1); %inizializzo il passo base con vettore di zeri
    tau = 1e-5; %imposto criterio di stop per lo scarto minimo
    kmax = 100; %imposto criterio di stop per i passi massimi
    
    [xj,kj] = jacobi(A,b,x0,tau,kmax); %richiamo la funzione di jacobi
    [xgs,kgs] = gs(A,b,x0,tau,kmax); %richiamo la funzione di gauss

    err_j = norm(xj-x)/norm(x); %calcolo l'errore di jacobi
    err_gs = norm(xgs-x)/norm(x); %calcolo l'errore di gauss
    rho = max(abs(eig(A))); %raggio spettrale

    fprintf('\nDimensione matrice: %d ', n);
    fprintf('Errore Jacobi: %e ', err_j);
    fprintf('Errore Gauss: %e ', err_gs);
    fprintf('Raggio spettrale: %f ', rho);
end


