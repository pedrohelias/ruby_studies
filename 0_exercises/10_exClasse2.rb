class CartaMagic

    def initialize(nome, custoMana, tipo, texto)
        @nome = nome
        @custoMana = custoMana
        @tipo = tipo 
        @texto = texto
    end

    def descricao
        puts "Este é #{@nome}, com o custo de #{@custoMana}, do tipo #{@tipo}, com o seguinte texto: #{@texto}"
    end

    

end

class Criatura < CartaMagic

    def initialize(nome, custoMana, tipo, texto, ataque, defesa, efeito)
        @nome = nome
        @custoMana = custoMana
        @tipo = tipo 
        @texto = texto
        @ataque = ataque
        @defesa = defesa 
        @efeito = efeito 
    end

    
end

class N_Criatura < CartaMagic;end




carta1 = CartaMagic.new("Raio", "R", "Mágica Instantânea", "Causa 3 pontos de dano no jogador ou criatura alvo")
carta1.descricao


carta2 = Criatura.new("Mercador Cinzento de Asfodelos","3BB", "criatura", "texto", 5, 2, nil)
carta2.descricao