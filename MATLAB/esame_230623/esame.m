%Esercizio n.1
clear, clc
flag = 1; 
while flag
    flag = 0;
    n = input('Inserisci un valore pari positivo: '); 
    if(mod(n,2) == 1)
       warning('il numero inserito e'' dispari');
       flag = 1;   
    end
    if(n <= 0)
       warning('Il numero inserito e'' negativo o nullo');
       flag = 1;
    end       
end

C = 7*ones(n, n-2);

%Esercizio n.2
clear,clc

flag2 = 1;
while flag2
    flag2 = 0;
    A = (10+10) * rand(8)-10; 

    if abs(det(A)) < 1e-15  %se la matrice non è invertibile  
        flag2 = 1;
    end    
end
x = ones(8,1); 
b = A*x;

x1 = A\b; %INV(A)*b  
err = norm(x1-x)/norm(x); %errore relativo
 
%Esercizio n.3
clear,clc

tab = zeros(10,2);
for i=1:1:10
    flag3 = 1;
    while flag3
        flag3 = 0;
        B = randi(20,i); %genero una matrice di interi ixi
        U = triu(B);
       

        if abs(det(U)) < 1e-15 %se U non è invertibile
            flag3 = 1;
        end    
    end

    x = ones(i,1); %vettore colonna
    b = U*x; %calcolo il vettore di termini noti b

    %x1 = U\b; 
    [x1] = sist_triu(U,b);
    err = norm(x1-x)/norm(x); %errore relativo  
    
    tab(i,:) = [i,err];  
end  


tabella = array2table(tab,"VariableNames",{'Dimensione', 'Errore'});
disp(tabella);

%Esercizio n.4
%{
clear,clc

D = (20+20) * rand(3)-20;
U = triu(D); 
x = ones(3,1);
b = U*x;

[x1] = sist_triu(U,b); 

%}



