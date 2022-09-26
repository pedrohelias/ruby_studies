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

        # loop do 
        #     puts senhaSistema[contador]
        #     contador = contador + 1
        
        #     break if contador == 4
        # end

        senhaSplit.each_with_index do |algoritmo,indice|
            #puts "Vou comparar o #{algoritmo} agora na posicao #{indice}"
            loop do
                if algoritmo == senhaSistema[contador]
                    
                    if(indice == contador)
                        posicaoCorreta = posicaoCorreta + 1
                    else
                        possicaoIncorreta = possicaoIncorreta + 1
                    end

                    contador = contador + 1
                else
                    contador = contador + 1
                end
                
                break if contador == 4
                
            end

            contador = 0
            
        end

        puts "Contem #{posicaoCorreta} algarismos na posicao correta\nContem #{possicaoIncorreta} algarismos na posição incorreta"
        puts "\n"

        if posicaoCorreta == 4
            return true 
        else 
            return false
        end
    end

    public def jogar
        fimDeJogo = false
        contadorTentativa = 0

        while(!fimDeJogo)
            contadorTentativa = contadorTentativa + 1
            puts "digite a senha para tentar descobrir"
            tentativa = gets.chomp
            verificador = verificarSenha(tentativa)

            if verificador == true
                puts "O jogador acertou a senha com #{contadorTentativa} tentativas"
                fimDeJogo = true
            end
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