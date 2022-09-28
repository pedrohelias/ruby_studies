class Jogador
    attr_accessor :nome

    def initialize
    end

    public def inserirNome
        puts "insira o nome do Jogador"
        @nome = gets.chomp
    end


end


class Hangman
    attr_accessor :classeJogador, :arquivo, :armazenador, :palavraTurno

    def initialize(classeJogador, arquivo)
        @classeJogador = classeJogador
        #@dicionario = dicionario
        @arquivo = arquivo

    end

    def preencheDic
    
        @armazenador = []
        n = 0
        File.open(@arquivo, "r") do |ponteiroLeitura|
            while newLine = ponteiroLeitura.gets #realizando a leitura em cada linha do arquivo de texto
                #puts newLine
                @armazenador[n] = newLine.delete("\n") #vai guardar os dados do dicionario e deletar as quebras de barra
                n = n + 1 #adicionar o contador e andar dentro da variável que vai armazenar o dicionario
            end
    
        end

        return @armazenador
    end

    def selecionaPalavra
        randomizador = rand(0..4)
        puts "o randomizador é #{randomizador}"
        return @palavraTurno = @armazenador[randomizador]
    end


    public def jogar
        letrasUtilizadas = []
        rodada = 0
        count = 0
        palavra = selecionaPalavra() #vai selecionar a palavra do turno do jogo

        palavraSplit = palavra.split("") #para simplificar na hora de adicionar as letras encontradas pelo jogador

        palavraJogador = Array.new(palavraSplit.length) #criando um array que vai copiar o tamanho do array a ser encontrado. Composto por Nills...

        while palavraSplit != palavraJogador
            
            puts "Palavra a ser acertada: #{palavraJogador}\nEla possui #{palavraJogador.length} letras!"
            puts "Selecione uma letra"
            puts "As letras já utilizadas foram: #{letrasUtilizadas}" #vai controlar as letras que ja foram utilizadas para o jogaodor não repetir
            letrasUtilizadas[count] = gets.chomp 

            palavraSplit.each_with_index do |ponteiroSplit,index| #vai pegar a letrar e comparar com a palavra selecionada a ser descoberta.
                
                #Esse each_with_index vai iterar a palavra sorteada contra a letra digitada. Se a letra digitada bate com a letra iterada da palavra sorteada, então a palavra do usuário é preenchida nos pontos especificos. Deu pra enteder? kkk :)

                if ponteiroSplit == letrasUtilizadas[count]
                    palavraJogador[index] = ponteiroSplit #vai preencher a palavra em caso de acerto de letras
                end

                #puts "a palavra está desse jeito: #{palavraJogador}"
                #puts index 
            
                
            end

            
            puts "\n"

            count = count + 1

            rodada = rodada + 1 #vai rotacionar o contador das letras utilizadas 
        
        
        end

        puts "Parabéns #{classeJogador.nome}, você acertou a palavra #{palavra} utilizando #{count} jogadas"

    end


end

jogador1 = Jogador.new()
jogador1.inserirNome


hangman1 = Hangman.new(jogador1, "respostas.txt")
hangman1.preencheDic
hangman1.jogar