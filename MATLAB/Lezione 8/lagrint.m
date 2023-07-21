function yy = lagrint(x,y,xx)

%help

%Lj(x) = ((x-x1)/(xj-x1))*((x-x2)/(xj-x2))*...*((x-xn)/(xj-xn))
%p(x) = y(1)*L0(x) + y(2)*L1(x) + ... + y(n)*Ln-1(x)

x = x(:); %rende vettore colonna un vettore
y = y(:);

n = size(x,1); %restituisce il primo output di size (numero di righe)
%n è il numero di L da calcolare
den = zeros(n,1); %vettore di n elementi colonna uguali a 0 (denominatore)

%calcolo del denominatore
for j = 1:n
    %per ogni elemento di den, calcolo la formula del denominatore
    den(j) = prod(x(j) - x([1:j-1,j+1:end])); %non fa mai x0 - x0
end

%calcolo del numeratore
m = size(xx,1); %ricavo la lunghezza del vettore interpolante xx
yy = zeros(m,1); %creo il vettore dei valori delle ordinate ottenute tramite
%interpolazione, popolato di zeri

for i=1:m
    num = prod(xx(i)-x)./(xx(i)-x); %formula del numeratore
    L = num./den; %ricavo tutti gli L del polinomio
    yy(i) = y'*L; %moltiplico il vettore delle y fornite con il vettore L di lagrange,
                  %elemento per elemento per ottenere le ordinate interpolate
end

plot(x,y,'or',xx,yy,'b-')
legend('dati da interpolare','polinomio interpolante')



