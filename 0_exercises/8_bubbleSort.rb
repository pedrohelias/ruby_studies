def bubbleSort(array)
    maiorValor = array[0]
    menorValor = array[0]
    max = array.length
    novaArray = Array.new(max)


    array.each do
    |valor|
        if valor <= menorValor
            menorValor = valor
        end
        if valor >= maiorValor
            maiorValor = valor
        end
    end
    
    marcador = 1

    #until novaArray[max] == maiorValor && novaArray[0] == menorValor



end 



arrayTeste = [1,2,10,5,6,1,4,7,2]

puts bubbleSort(arrayTeste)