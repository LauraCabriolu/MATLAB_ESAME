function [x,k] = jacobi(A,b,x0,tau,kmax)

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

B = D\(E+F); %calcolo il valore di B=D^-1*(E+F)
f = D\b; %calcolo il valore di f=D^-1*b
flag = 1; %inizializzo la flag
k = 0; %inizializzo il contatore
x_new = x0;

while flag
    x0 = x_new; %x0 all'inizio di ogni ciclo prenderà il valore di xk+1 
    %dell'iterazione precedente
    x_new = B*x0 + f; %L'operazione B*xk + f ci restituisce un vettore che rappresenta
    %l'iterazione xk+1
    k = k+1; %incremento k
    flag = (norm(x_new - x0) > tau*norm(x0)) && (k<kmax); %se le condizioni sono ancora vere, il ciclo continua
end
x = x_new; %assegno a x la soluzione approssimata trovata
    