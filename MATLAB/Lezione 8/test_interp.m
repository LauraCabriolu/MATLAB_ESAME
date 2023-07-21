%x = valori delle ascisse di partenza in cui voglio che passi il polinomio
%y = valori delle ordinate di partenza in cui voglio che passi il polinomio
%xx = campionamento fitto per fare il grafico
%yy = ordinate ottenute dal campionamento xx

%x = linspace(-1,1,20)';  %equispaziati

n = 20; %dimensione
k = (0:n)'; %creo un vettore colonna con valori da 0 a n
x = cos((2*k+1)./(2*(n+1))*pi); %vettore da interpolare

%y = sin(pi*x);
y = 1./(1+25.*x.^2); %calcolo le ordinate con la funzione interpolare
xx = linspace(-1,1,100)'; %vettore delle ascisse campionate 


yy = canint(x,y,xx); %calcolo le ordinate campionate
%yy = lagrint(x,y,xx);
