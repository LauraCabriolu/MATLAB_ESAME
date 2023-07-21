function [x,k] = gs(A,b,x0,tau,kmax)

if (nargin < 5),kmax = 100;end
if (nargin < 4),tau = 1e-5;end
if (nargin < 3),x0 = zeros(size(b));end

D = diag(diag(A)); %crea la matrice diagonale D
E = -tril(A,-1); %crea la matrice triangolare inferiore
%con i valori cambiati di segno, partendo da una riga sotto la diagonale
%(-1)
F = -triu(A,1); %crea la matrice triangolare superiore 
%con i valori cambiati di segno, partendo da una riga sopra la diagonale
%(1)

B = (D-E)\F; %calcolo B = (D-E)^-1 * F
f = (D-E)\b; %calcolo f = (D-E)^-1 * b
flag = 1;
k = 0; 
x_new = x0;

while flag %verifico le condizioni di entrata
    x0 = x_new; %assegno a x0 l'iterazione k+1 precedente
    x_new = B*x0 + f; %calcolo l'iterazione
    k = k+1; %incremento k
    flag = (norm(x_new - x0) > tau*norm(x0)) && (k<kmax);
end
x = x_new;