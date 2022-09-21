## O Ruby permite explicitar alguns métodos como Private e Public. Métodos Públicos são alcançáveis dentro de um sistema. Já os métodos privados não. Por padrão, os métodos no Ruby são PUBLICOS. Entao, tudo que é Publico (ate o encontro do end) será publico, ocmo no exemplo abaixo, ah não ser que seja dito o contrário. Métodos privados só podem ser chmamados dentro do próprio código por objetos associados
##ex:

class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
    
    public    # This method can be called from outside the class.
    
    def about_me
      puts "I'm #{@name} and I'm #{@age} years old!"
    end
    
    private   # This method can't!
    
    def bank_account_number
      @account_number = 12345
      @password = 1234567
      puts "My bank account number is #{@account_number}, and my password is #{@password}."
      
    end
  end
  
eric = Person.new("Eric", 26)
eric.about_me #quando executado, vai rodar esse método sem problemas algum.
#eric.bank_account_number #quando executado, será lançado um erro avisando que esse método é privado.



#Também pode ser escrito em uma linha: public def about_me


#___________________________________________________________________________________________________


#Acesso a variáveis
#No ruby, para acessarmos variáveis, sempre utilizampos métodos que as descrevem como: 

# def nome
#    @nome 
# end

#Mas agora, utilizartemos attr_reader e attr_writer

class Person
    attr_reader :name
    attr_writer :job
    
     def initialize(name, job)
       @name = name
       @job = job
     end
   
end

#Se quisermos ler e escrever uma determina variável. há uma terceira forma de se escrever sem utilizar muitos attr. Se trata do att_accessor

class Person
    attr_reader :name
    attr_accessor :job
  
    def initialize(name, job)
      @name = name
      @job = job
    end
end

#no caso acima, queremos ler e escrever a variavel job, então utilizamos um Accessor

#MODULOS

#Modulos devem ser vistos como Toolboxes, realmente como caixas de ferramentas. A diferença deles para classes é que não podem ser instanciados e não podem conter subclasses. São utilizados apenas para armazenar coisas 
#ex:


module Circle

    PI = 3.141592653589793
    
    def Circle.area(radius)
      PI * radius**2
    end
    
    def Circle.circumference(radius)
      2 * PI * radius
    end
end

#Um modulo para calcular area e circunferencia 

#Modulos são escritos com CapitalizedCamelCase, e não há muitos motivos em incluir variáveis dentro de modulos, sendo que, variáveis por definição mudam com certa constância. Agora constantes são totalmente aceitaveis dentro de modulos.Constantes no Ruby saõ escritas COM_CAPS e separadas com Underscore 
#ex:

module MyLibrary
    FAVE_BOOK = "Chronicles of Ice and Fire"
end


#namespacing
#é a forma como dizemos para separar modulos de suas constantes. Por exemplo "Math::PI", o Ruby vai buscar o PI dentro de Math. OU Circle::PI
#EX:

puts "#{Math::PI}" #vai aparecer no console

#Algumas modulos como Math já estão presentes no interpretador. Outros precisam ser explicitados. E para tal, utilizamos require
#exemplo

require 'date'

puts "hoje é dia #{Date.today}"

#Podemos também inclusir modulos 
#Qualquer classe que inclua modulos está habilitada a utiliza-los como tal. E a grande vantagem é em simplificação de escrita. Naõ mais utilizar Math::PI para agora utilizar apenas PI
#Ex para Math.cos

class Angle
    include Math
    
    attr_accessor :radians
    
    def initialize(radians)
      @radians = radians
    end
    
    def cosine
      cos(@radians)
    end
  end
  
acute = Angle.new(1)
puts acute.cosine #vai mostrar o cosseno de 1


