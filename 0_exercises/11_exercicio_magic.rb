class Carta 
    def initialize(nome, cmc, tipo)
        @nome = nome 
        @cmc = cmc 
    end

    def apresentacao
        puts "o nome da carta é #{@nome}, com custo de mana de #{@cmc}"
    end

end

class Land < Carta 

    def initialize(nome, cmc, efeito)
        super
        @efeito = efeito 
    end

end


class Criatura < Carta 

    @@isDead = false 

    def initialize(nome,cmc,ataque, defesa, habilidade)
        super
        @ataque = ataque
        @defesa = defesa 
        @habilidade = habilidade 
    end

    def apresentacao
        puts "o nome da carta é #{@nome}, com custo de mana de #{@cmc}, e ataque #{@ataque}"
    end

end
    
class Magica < Land 
    def initialize(nome, cmc, efeito, habilidade)
        super
        @habilidade = habilidade
 
    end
end