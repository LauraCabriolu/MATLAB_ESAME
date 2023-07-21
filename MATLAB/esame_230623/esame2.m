%esercizio n.1
clear,clc

flag = 1;
while flag %il ciclo continua fino a quando flag = 1
    flag = 0;
    n = input('Inserisci un numero: ');

    if not(n >= 1 && mod(n,2) == 0) %controllo se il numero e' pari e positivo
        warning ('Il numero inserito non e'' valido'); %se non lo è stampo un messaggio di warning
        flag = 1; %imposto la flag a 1 in modo da rientrare nel ciclo e reinserire il numero
    end    
end

A = 7*ones(n,n-2); %creo una matrice nxn-2 di 7

%esercizio n.2
clear,clc
a = -10;
b = 10;
n = 8;

flag2 = 1;
while flag2 
    flag2 = 0;
    A = (b-a).*rand(n)+a; %genero una matrice 8x8 di numeri tra -10 e 10

    if abs(det(A)) < 1e-10  %controllo se la matrice è invertibile
        warning('matrice non invertibile');
        flag2 = 1;
    end
end
   
x = ones(n,1); %creo un vettore colonna di elementi uguali a 1
b = A*x; %calcolo il termine noto b facendo

x1 = A\b; %risolvo il sistema lineare facendo A^-1*b

err = norm(x1-x)/norm(x); %calcolo l'errore relativo

%esercizio n.3
clear,clc

tab = zeros(10,2); %creo una matrice 10 righe e 2 colonne (dimensione e errore relativo)

for i=1:10
    flag3 = 1;
    while flag3 
        flag3 = 0;
        B = randi([0,20], i); %creo una matrice di interi dimensione ixi con elementi tra 0 e 20
        U = triu(B); %estraggo la triangolare superiore di B 


        if abs(det(U)) < 1e-10 %controllo se la matrice U e' invertibile
            %matrice non invertibile
            flag3 = 1; %imposto a 1 in modo da rientrare nel ciclo while 
        else 
            %matrice invertibile
            x = ones(i,1); %creo il vettore colonna della soluzione nota
            b = U*x; %calcolo il termine noto

           % x1 = U\b; %risolvo il sistema lineare x = B^-1*b
            [x1] = sist_triu2(U,b); 
            err = norm(x1-x)/norm(x); %calcolo errore relativo
            tab(i,:) = [i,err];
        end    
    end
end 

tabella = array2table(tab,"VariableNames",{'Dimensione', 'Errore'});
disp(tabella);








