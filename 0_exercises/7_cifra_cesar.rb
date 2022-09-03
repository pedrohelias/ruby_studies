#Basicamente se trata de um algoritmo de criptografia não muito confiável. Se da pela alteração das letras de acorda com um valor número. Por exemplo. Quero que o fator de localização seja 5, ou seja, todas letras correspondem a 5ª letra a direita. Ex: O A viraria F. A frase "What a string" viraria "Bmfy f xywnsl". 

def cifra_cesar(frase, fatorLocalizacao)
    vetorComparacao = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
   
    #CONVERSAO DO VETOR COMPARACAO PARA VETOR COM LETRAS MAIUSCULO - INICIO

    vetorMaiusculo =[]
    localizadorMaiusculo = 0
    vetorComparacao.map do 
        |cvt| 
        vetorMaiusculo[cvt.to_i + localizadorMaiusculo] = cvt.upcase
        localizadorMaiusculo +=1
    end

    #CONVERSAO DO VETOR COMPARACAO PARA VETOR COM LETRAS MAIUSCULO - FIM


    splitFrase = frase.split("") #transformando a frase em um vetor de caracteres
    novoVetor = [] #inicializando vetor que vai receber a frase criptografada
    localizadorVetorComparacao = 0 #localizador da coelção de letras minusculas
    chaveAcerto = false #chave de saída do loop until
    localizadorVetorNovo = 0 #localizador no vetor que vai receber os caracteres criptografados
    space = " " #identificador de espaço
    localizadorMaiusculo = 0 #localizador da coleção de letras maiusculas

    splitFrase.each do
    |palavra|

    chaveAcerto = false 
    localizadorVetorComparacao = 0
    localizadorMaiusculo = 0
        
        until chaveAcerto == true
            

            if palavra == vetorComparacao[localizadorVetorComparacao] #criptografa se for minuscula
                novoVetor[palavra.to_i + localizadorVetorNovo] = vetorComparacao[localizadorVetorComparacao + fatorLocalizacao]
                #puts  vetorComparacao[localizador + fatorLocalizacao]
                chaveAcerto = true #sai do loop
                localizadorVetorNovo +=1
            
            elsif palavra == vetorMaiusculo[localizadorMaiusculo] #criptografa se for maiuscula
                novoVetor[palavra.to_i + localizadorVetorNovo] = vetorMaiusculo[localizadorMaiusculo + fatorLocalizacao]
                chaveAcerto = true 
                localizadorVetorNovo +=1
            
            elsif palavra == space #comparando com espaço
                novoVetor[palavra.to_i + localizadorVetorNovo] = space
                localizadorVetorNovo +=1
                chaveAcerto = true #sai do loop
            
            elsif localizadorVetorComparacao < 51 && localizadorMaiusculo < 51  #se ele rodar todo o vetor de comparação até o fim, quer dizer que se trata de um símbolo desconhecido
                localizadorVetorComparacao += 1
                localizadorMaiusculo +=1
               
            else #mantem o sinal
                novoVetor[palavra.to_i + localizadorVetorNovo] = palavra
                chaveAcerto = true #sai do loop
            end 

        end

    end


    return novoVetor.join 



end


palavraTeste = "What a string!" # ["t", "e", "s", "t", "e", "e", " ", "s", "p", "a", "c", "o"]
fator = 5

puts cifra_cesar(palavraTeste, fator) #=> Bmfy f xywnsl!