function [L,U] = gauss_lu(A)

[m,n] = size(A);

if m~=n
    error('La matrice A non e'' quadrata')
end

if det(A) < 1e-14
    error('Matrice singolare')
end

L = zeros(n); %creo la matrice iniziale L nxn formata da zeri

for k = 1:n-1
    for i = k+1:n
        m = A(i,k)/A(k,k); %calcolo la variabile che permette l'annullamento
        %del valore di A(i,k)
        A(i,:) = A(i,:)-m*A(k,:); %porto a 0 il valore di A(i,k) e svolgo la stessa
        %operazione anche con gli altri valori della riga
        L(i,k) = m; %riempio la cella corrispondente a quella che ho 
        %annullato con il coefficiente che ha permesso l'annullamento   
    end
end

L = L + eye(n); %sommo a L la matrice identità per ottenere la matrice diagonale inferiore
U = A; %U è la matrice diagonale superiore ottenuta 