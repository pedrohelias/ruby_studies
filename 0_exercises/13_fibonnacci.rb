def fibonacci(contador = 1, armazenador = [0,1], somador = 0, criterioParada) #armazenador vem com valor default para sempre iniciar com esse valor 
    
    fibs = armazenador[contador] + armazenador[contador-1]
    armazenador.push(fibs)
    #puts "#{armazenador}" if armazenador.length == criterioParada #if simplificado de 1 linha.
    return armazenador if armazenador.length == criterioParada
    fibonacci(contador + 1, armazenador, criterioParada)

    
end

def somaFibonacci(array)
    soma = array[0]
    counter = 0
    array.each do |valor|
        soma = soma + valor
    end
    return soma 
end


puts "Digite o comprimento do vetor de Fibonacci" 
param = gets.chomp.to_i
func1 = fibonacci(param) #vai retornar uma array composta por x numeros fibonacci dentro dela, sendo x o numero dentro do método Fibonacci
puts "#{func1}"
func2 = somaFibonacci(func1)
puts "o resultado é: #{func2}"