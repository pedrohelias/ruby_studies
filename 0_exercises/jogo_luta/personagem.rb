class Personagem
    attr_accessor :nome, :hp, :mp, :poder, :defesa

    def initialize(nome)
        @nome = nome
        
    end

    def geraOver
        @hp = hp = rand(17..20)
        @mp = mp = rand(8..10)
        @poder = poder = rand(5..8)
        @defesa = defesa = rand(8..10)
        

    end

    def apresentacao
        geraOver()
        puts "com #{hp} de HP, #{mp} de MP, #{poder} de poder e #{defesa} de defesa"
    
    end


end

# boneco1 = Personagem.new("Charles Bronson")
# boneco1.apresentacao