#O Ruby é uma linguagem orientada a objeto, e por esse motivo se faz necessário aprender o conceito de POO utilizando Ruby
#Quase tudo no Ruby é um objeto. E objetos possuem métodos e atributos
#"Matz".length -> 4. Matz é uma string com um método length. E 4 é um atributo do método Length
#E o que faz Matz ser uma string é o fato que ele simplesmente é instancia da Classe String

#Como exemplo, temos: 

class Language
    def initialize(name, creator) #initialize é padrão e deve sempre começar com esse nome, pois é onde os dados serão estabelecidos
      @nome = name # o nome da variavel a direita deve ser igual ao solicitado no parentes
      @criador = creator
    end
      
    def description
      puts "I'm #{@nome} and I was created by #{@criador}!"
    end

end
  
ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")
  
  ruby.description
  python.description
  javascript.description