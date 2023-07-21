

n = input('Inserire un numero tra 1 e 3:');

switch n
    case 1
        fprintf('Primo\n')
    case 2
        fprintf('Secondo\n')
    case 3    
        fprintf('Dolce\n')
    otherwise
        warning('Piatto non presente!')
end


