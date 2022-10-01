require "./personagem.rb"

class Confronto
    attr_accessor :char1, :char2
    def initialize(char1,char2)
        @char1 = char1
        @char2 = char2
    
    end

    def apresentacaoConfronto
        puts "De um lado, #{char1.nome}, com #{char1.hp} de vida, #{char1.mp} de mana, #{char1.poder} de força, #{char1.defesa} de defesa, e de outro #{char2.nome}, com #{char2.hp} de vida, #{char2.mp} de mana, #{char2.poder} de força, #{char2.defesa} de defesa,"
    end

    def rolagemD6
        return rand(1..6)
    end

    def correcaoStatus

        @poderP1 = char1.poder.to_f
        @poderP2 = char2.poder.to_f
        @resultadoD6 = rolagemD6()

        @poderCorrecao1 = (@poderP1 * @resultadoD6)/10
        @poderCorrecao2 = (@poderP2 * @resultadoD6)/10 

    end


    def luta
        @HP1 = char1.hp
        @HP2 = char2.hp
        @Def1 = char1.defesa
        @Def2 = char2.defesa
        saida = false

        while saida == false 
            contaDano = rolagemD6()

            if contaDano % 2 == 0
                @HP1 = @HP1 - (@Def1 - @poderCorrecao2) 
            else
                @HP2 = @HP2 - (@Def2 - @poderCorrecao1)
            end

            
            if @HP1 <= 0 || @HP2 <= 0
                saida = true
                puts @HP1
                puts @HP2
            end
        end

        vencedor()        
    end

    def vencedor 
        if @HP1 <= 0
            puts "#{char2.nome} venceu a luta"
        else
            puts "#{char1.nome} venceu a luta"
        end
    end


end

boneco1 = Personagem.new("Charles Bronson")
boneco2 = Personagem.new("Chuck Norris")
boneco1.geraOver
boneco2.geraOver
confronto1 = Confronto.new(boneco1,boneco2)
confronto1.apresentacaoConfronto 
confronto1.correcaoStatus
confronto1.luta