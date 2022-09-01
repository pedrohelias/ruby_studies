#Metodos predicate são simbolizados pelo interrogação ao fim do nome do método, e retorrna true ou false

#INCLUDE? - quando queremos saber se determinado elemento está contido em alguma array, por exemplo

#para encontrar se determinado valor está contido em uma coleçaõ de valores, com o método each fazemos assim: 

def estaContido(contido, vetor)
    contem = false
    vetor.each do |valor|
        if valor == contido
            contem = true
        end
    end

    return contem
end

vetor = [12,3,4,5,6,7]
encontrar = 8

puts estaContido(encontrar, vetor)

#já com o metodo include, fazemos assim:

def estaContido2(contido2, vetor2)
    vetor2.include?(contido2) #retorna o booleano dessa estrutura
end

puts estaContido2(encontrar,vetor) 

#facilmente em poucas linhas reduzimos uma boa quantidade de codigo

#ANY? Retorna true se qualquer elemento no seuvetor ou hash compactua com as condições no bloco de codigo 

def maiorTalValor(valor, vetor)
    disparador = false
    vetor.each do |contador|
        if contador >= valor
            disparador = true
        end
    end
    return disparador
end

vetorAlto = [200, 300, 400, 500, 600]
valorLimiar = 300

puts maiorTalValor(valorLimiar, vetorAlto)

#fariamos dessa forma com o each
#Com any, o metodo se torna mais simples 

def disparaMaiorValor(valor2, vetor2)
    vetor2.any?{|numero| numero >= valor2}
end

puts disparaMaiorValor(valorLimiar, vetorAlto)

#Novamente, em poucas linhas replicamos o exemplo acima 

#Método ALL? - Apenas retorna true se todos os elementos na coleçaõ ou hash forem condizentes com as condições do bloco 

#exemplo: Checar se todas palavras na nossa coleçaõ possuem tamanho maior ou igual a 5

def checkLength(condicao, vetor)
    vetor.all? {|elemento| elemento.length <= condicao} #vai comparar se é menor ou igual ao tamanho estipulado. .length vai extrair o tamanho da variavel 
end

colecaoTeste = ["abacate", "saida", "teste", "soma"]
condicao = 10

puts checkLength(condicao,colecaoTeste)

#por padrão, o .all vai retorar true. Então, se comparar com uma hash ou vetor vazios, recebe true

#NONE?  - retorna TRUE apenas se nenhum valor dos disponíveis baterem com as condições estabelecidas

def checkLength2(condicao, vetor)
    vetor.none? {|elemento| elemento.length <= condicao} #retorna falso porque alguns valores vão passar do estabelecido
end


puts checkLength2(condicao,colecaoTeste)


