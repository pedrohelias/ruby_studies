class Carro

    @@velocidade = 0  #variavel interna da classe, 2 @@

    def initialize(placa, chassi, ano, marca, modelo, quilometragem)
        @placa = placa
        @chassi = chassi 
        @ano = ano 
        @marca = marca 
        @modelo = modelo 
        @quilometragem = quilometragem
    end

    def vendaCarro
        puts "Este é um carro da marca #{@marca}, modelo #{@modelo}, ano #{@ano}, com #{@quilometragem} de quilometragem"
    end

    def acelerar
        if @@velocidade >= 80
            puts "limite atingido!"
        else    
            @@velocidade += 20
            puts "Acelerando!!!"
        end
    end

    def freiar
        if @@velocidade <= 0
            puts "impossível freiar, o carro está parado"
        else 
            @@velocidade -= 20
            puts "Freiando!!"
        end
    end

    def parar 
        @@velocidade = 0
        puts "Parou o carro!"
    end

    def apresentaVelocidade
        puts "A velocidade atual é: #{@@velocidade}km"
    end

end

carro1 = Carro.new("jhc-9020", 1234565, 2022, "RX", "Ford", 2000)

variavelSaida = 0

while variavelSaida != 1

    puts "O que você gostaria de fazer? \n1 - acelerar\n2 - freiar\n3 - parar\n4 - apresentar a velocidade atual\nqualquer outra tecla - fazer mais nada "
    opcao = gets.chomp.to_i

    operacao = case opcao 
        when 1 
            carro1.acelerar
            puts "\n"
        when 2
            carro1.freiar
            puts "\n"
        when 3
            carro1.parar
            puts "\n"
        when 4
            carro1.apresentaVelocidade
            puts "\n"
        else 
            variavelSaida = 1 
        end

end