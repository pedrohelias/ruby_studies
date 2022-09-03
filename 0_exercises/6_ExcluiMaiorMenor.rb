#lê uma lista de tamanho variável e retorna uma nova lista com exclusão do maior e do menor número.

def calculaNota(lista)
    maiorValor = lista[0]
    menorValor = lista[0]
    lista.each do
    |valor|
        if valor <= menorValor
            menorValor = valor
        end
        if valor >= maiorValor
            maiorValor = valor
        end
    end
    
    novaLista = [menorValor,maiorValor]
    return listaResultado = lista - novaLista
    

end

lista=[1,2,3,4,5,6]
puts calculaNota(lista)
