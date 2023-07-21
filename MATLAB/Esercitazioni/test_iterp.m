%x = valori delle ascisse di partenza in cui voglio che passi il polinomio
%y = valori delle ordinate di partenza in cui voglio che passi il polinomio
%xx = campionamento fitto per fare il grafico
%yy = ordinate ottenute dal campionamento xx

%x = linspace(-1,1,20)';  %equispaziatifun4

n = 20; %dimensione
k = (0:n)'; %creo un vettore colonna con valori da 0 a n

x = 1./(1+25.*x.^2); %vettore x da interpolare
y = sin(2*pi*x); %calcolo le ordinate con la funzione interpolare

%y = sin(pi*x);

xx = linspace(-1,1,100)'; %vettore delle ascisse campionate 

yy1 = canint(x,y,xx); %calcolo le ordinate campionate
%yy2 = lagrint(x,y,xx);
