function [P,L,U] = gauss_palu(A)

[m,n] = size(A);

if m~=n
    error('La matrice A non e'' quadrata')
end

if det(A) < 1e-14
    error('Matrice singolare')
end

P = eye(n); %creo la matrice identità nxn
L = zeros(n); %creo la matrice di zeri nxn

for k = 1:n-1
    [~,pos] = max(abs(A(k:n,k))); %restituisce la posizione del massimo valore 
    %in valore assoluto della colonna k    
    l = pos+k-1; %calcolo la riga con il valore maggiore della colonna k
    A([k l],:) = A([l k],:); %scambia la riga
    L([k l],:) = L([l k],:); %scambia la riga
    P([k l],:) = P([l k],:); %scambia la riga
    for i = k+1:n
        m = A(i,k)/A(k,k); %calcolo la variabile che permette l'annullamento
        %del valore di A(i,k)
        A(i,:) = A(i,:)-m*A(k,:);%porto a 0 il valore di A(i,k) e svolgo la stessa
        %operazione anche con gli altri valori della riga
        L(i,k) = m; %riempio la cella corrispondente a quella che ho 
        %annullato con il coefficiente che ha permesso l'annullamento  
    end
end

L = L+eye(n); %sommo a L la matrice identità per ottenere la matrice diagonale inferiore
U = A; %U è la matrice diagonale superiore ottenuta