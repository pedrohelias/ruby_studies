#A sintaxe basica de uma classe inicializa com a chamada dessa classe e por conseguinte seu nome 

class NovaClasse
end

#por convenção, classes inicializam com letra maiuscula, e utilizam camel case
#Para definir variaveis de instancia, ou seja, associadas a instancia da classe, utilizamos o @
# o $ simboliza variaveis globais(que não necessitam de serem instanciadas - mas pela liberdade que possuem não sõa uma boa ideia ), o @ variaveis de instancia e o @@ variaveis de classe, só consegue obter se chamar o metodo da classe

class Pessoa
    $especie = "Humano"

    def initialize(nome, idade, altura)
    @nome = nome
    @idade = idade
    @altura = altura
    end

    def apresentacao
        puts "Olá, meu nome é: #{@nome}, tenho #{@idade} e minha altura é: #{@altura}"
    end

end

pedro = Pessoa.new("Pedro", "27", "1.71")
pedro.apresentacao
puts $especie #consegue chamar sem instanciar 

#Exemplo com varios tipos de variais 

class Computer
    $manufacturer = "Mango Computer, Inc."
    @@files = {hello: "Hello, world!"}
    
    def initialize(username, password)
      @username = username
      @password = password
    end
    
    def current_user
      @username
    end
    
    def self.display_files
      @@files
    end
  end
  
  # Make a new Computer instance:
  hal = Computer.new("Dave", 12345)
  
  puts "Current user: #{hal.current_user}"
  # @username belongs to the hal instance.
  
  puts "Manufacturer: #{$manufacturer}" #nem precisa pegar pela instancia
  # $manufacturer is global! We can get it directly.
  
  puts "Files: #{Computer.display_files}"
  # @@files belongs to the Computer class.

# o @@ por se tratar de variavel de classe, possui um artificion muito interessante, e contagem de instancias é uma delas, por exemplo
#ex

class Terno 
    @@numeroDeInstancias = 0

    def initialize(comprimento,largura)
        @comprimento = comprimento
        @largura = largura

        @@numeroDeInstancias += 1
    end

    def self.numeroInstancias
        @@numeroDeInstancias
    end

end

pedro = Terno.new(2.70, 4.80)
joao = Terno.new(3.70, 5.80)

puts "a quantidade de instâncias para essa classe são: #{Terno.numeroInstancias}"

