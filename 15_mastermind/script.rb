class Jogador 
    attr_accessor :nome, :senha   

    def initialize
    end

    public def insereNome
        puts "Insira o nome do jogador que irá adivinhar a senha"
        @nome = gets.chomp  
    end 

    public def apresentacao
        puts @nome
    end
end

class Mastermind
    attr_accessor :senha, :dificuldade


    def initialize(dificuldade="Facil")
        @dificuldade = dificuldade 
    end

    public def insereSenha()

        puts "Insira a senha!"
        @senha = gets.chomp 
    end

    private def mostraSenha
        puts @senha
    end

    public def verificarSenha(senhaDigitada)
        senhaSplit = senhaDigitada.split("")
        senhaSistema = @senha.split("")
        contador = 0
        posicaoCorreta = 0
        possicaoIncorreta = 0
        contem = 0
        quebra = false 


        senhaSplit.each do |algarismo|
            
            # senhaSistema.each do |comp| 
            
            #     if algarismo == comp
            #         contem = contem + 1
            #     end

            # end

            if algarismo == senhaSistema[contador]
                contem = contem + 1
                contador = contador + 1
            else
                contador = contador + 1
            end

        end

        puts "Contem #{contem} algarismos iguais"
    end

    public def jogar
        fimDeJogo = false

        while(!fimDeJogo)
            puts "digite a senha para tentar descobrir"
            tentativa = gets.chomp 
            verificarSenha(tentativa)


        end

    end


end

# jogador1 = Jogador.new()
# jogador1.insereNome
# jogador1.apresentacao

senha1 = Mastermind.new("Facil")
senha1.insereSenha
#puts senha1.dificuldade - mostrar a dificuldade
senha1.jogar