n = 10;
A = 10*rand(n); %genero una matrice nxn 
x = ones(n,1); %genero un vettore n di 1
b = A*x; %calcolo il vettore b in base ad A
[P,L,U] = gauss_palu(A); %richiamo la funzione
y = L\(P*b); % Pb = Ly
x1 = U\y; %Ux = y
err = norm(x1-x)/norm(x);
fprintf('\nL''errore che si commette e'': %e',err)