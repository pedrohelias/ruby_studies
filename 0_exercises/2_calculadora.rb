iterador = 0

while iterador == 0 do

    puts "Calculadora universal! Selecione a opção: \n1-Soma\n2-Subtração\n3-Multiplicação\n4-Divisão"

    selecao = gets.chomp.to_i
    
    while selecao>4 || selecao<1 do
        puts "digite uma opção válida"
        selecao = gets.chomp.to_i
    end


    puts "Selecione o primeiro valor"
    primeiroValor = gets.chomp.to_f
    puts "Selecione o segundo valor"
    segundoValor = gets.chomp.to_f

    total = 0

    calculadora = case selecao
        when 1
            total = primeiroValor + segundoValor
            puts "O resultado da soma foi de #{total}"
        when 2
            total = primeiroValor - segundoValor
            puts "O resultado da subtração foi de #{total}"
        when 3
            total = primeiroValor * segundoValor
            puts "O resultado da multiplicação foi de #{total}"
        when 4
            total = primeiroValor / segundoValor
            puts "O resultado da divisão foi de #{total}"
        else
            puts "teste"
        end

        puts "Gostaria de realizar outra operação? Digite 0 para sim, e 1 para não "
        iterador = gets.chomp.to_i
end