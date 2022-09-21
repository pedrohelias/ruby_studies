#Mixin modules são modulos agora utilizados por classes que misturam seu comportamente a elas 
#Um exemplo:

module Action

    def jump
      @distance = rand(4) + 2
      puts "I jumped forward #{@distance} feet!"
    end

end
  
  class Rabbit
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end
  
  class Cricket
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end
  
peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")
  
peter.jump
jiminy.jump

##OU

# Create your module here!
module MartialArts
    def swordsman
      puts "I'm a swordsman."
    end
  end
  
  class Ninja
  include MartialArts
  
    def initialize(clan)
      @clan = clan
    end
  end
  
  class Samurai
  include MartialArts
  
    def initialize(shogun)
      @shogun = shogun
    end
  end


#UTilizando Extend, possibilitamos a classe de usar os métodos, em oposicação a include. É como se incluissimos métodos dos modulos nas classes 

# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
    def now
      puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
    end
  end
  
  class TheHereAnd
    extend ThePresent
  end
  
TheHereAnd.now

#Exemplo interessnate 

module Languages
    FAVE = "Ruby"  # This is what you typed before, right? :D
  end
  
  class Master
  include Languages
  
    def initialize; end
    def victory
      puts FAVE
    end
  end
  
  total = Master.new
  total.victory