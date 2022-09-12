## Herança é o processo que uma classa toma os atributos e métodos da outra. 
#Para simbolizar a herança, utiliza-se "<"

class ApplicationError
    def display_error
      puts "Error! Error!"
    end
  end
  
  class SuperBadError < ApplicationError
  end
  
  err = SuperBadError.new
  err.display_error

  #A classe SuperBadError recebe atributos e métodos de ApplicationError

#OVERRIDE significa a sobrecarga de elementos. É basicamente o fato de se desejar herdar atributos e métodos de outra classe, porém substituir alguns desses atributos ou métodos na classe herdeira. 
#Exemplo

class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punch to the chops!"
    end
  end
  
  # Add your code below!
  
  class Dragon < Creature
  
    def fight 
      return "Breathes fire!"
    end
  end 

  


#SUPER - uma forma de invocar atributos ou metodos de uma classe superiora, a qual foi herdado os atrbutos e métodos. 

#class DerivedClass < Base
#    def some_method
#      super(optional args)
      # Some stuff
#      end
#    end
# end

#Apenas retorna o explicitado pela classe que se passou.

#Multiplicação de Heranças - o que acontece em caso de uma classe herdar mais de 2 classes. É algo não muito recomendado 
