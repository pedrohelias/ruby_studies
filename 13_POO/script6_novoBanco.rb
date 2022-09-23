class Account
    attr_reader :name, :balance
    def initialize(name, balance=100) 
        # esse balance=100 sinaliza duas coisas: A primeira é que o Ruby está dizendo que você pode passar 1 ou 2 argumentos para initialize. A segunda é que caso passe apenas name, ele vai inicializar balance como 100. Caso contrário, vai inicializar balance com a quantidade exposta pelo usuário
      @name = name
      @balance = balance
    end
    
    def display_balance(pin_number)
      puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
    
    def withdraw(pin_number, amount)
      if pin_number == pin
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
        puts pin_error
      end
    end
    
    private def pin
      @pin = 1234
    end
    
    def pin_error
      "Access denied: incorrect PIN."
    end
  end
  
  my_account = Account.new("Eric", 1000000) #poderia escrever 1000000 como 1_000_000. É uma boa permissividade do Ruby, pois facilita na visualização de números grandes
  my_account.withdraw(11, 500000)
  my_account.display_balance(1234)
  my_account.withdraw(1234, 500000)
  my_account.display_balance(1234)