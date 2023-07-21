n = 10;
A = 10*rand(n); %genero una matrice nxn
x = ones(n,1);  %genero un vettore n di 1
b = A*x; %calcolo il vettore b in base ad A
[L,U] = gauss_lu(A); %richiamo la funzione
y = L\b; %Ly = b
x1 = U\y; % Ux = y
err = norm(x1-x)/norm(x); %errore relativo (?)
fprintf('\nL''errore che si commette e'': %e',err)