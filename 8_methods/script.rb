#No Ruby, todo método está associada um objeto
#Neste ponto, o Ruby só possui métodos 
#Para criar um método, temos: 

def primeiraFuncao # o def vai inicializar a possibilidade de uma função, primeiraFuncao será o nome dado a funcao. O Conteudo é uma string. A função finaliza com end
    "Pedro Helias Carlos"
end

puts primeiraFuncao

#POdemos nomear funções dessa forma 

# method_name      # valid
# _name_of_method  # valid
# 1_method_name    # invalid
# method_27        # valid
# method?_name     # invalid
# method_name!     # valid
# begin            # invalid (Ruby reserved word)
# begin_count      # valid

#Parametros com argumentos - Similar a chamadas de método classicas em outras funções.

def greet(name)
    "Hello, " + name + "!"
end
  
puts greet("John") #=> Hello, John!

#Há a possibilidade de ser inidicado parâmetros "default" em caso de não ser passado argumentos no método 

def greet(name = "stranger")
    "Hello, " + name + "!"
end
  
puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!

#O Ruby é uma das poucas linguagens que oferecem um Return explicito, o que significa que o ruby vai retornar a ultima expressão calculada sem a palavra Return. Detalhe que naõ necessariamete a ultima expressão calculada deve estar na ultima linha. Podemos estar tratando de um condicional no método, e neste ponto o retorno do condicional está fadado ao que será selecionado. 

def even_odd(number)
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
  end
  
  puts even_odd(16) #=>  That is an even number.
  puts even_odd(17) #=>  That is an odd number.

#Mesmo assim o retorno pode ser escrito nas funções. E é útil quando se procura entender quando um input foi inserido incorretamente, por exemplo. 

def even_odd(number)
    unless number.is_a? Numeric
      return "A number was not entered."
    end
  
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
  end
  
  puts even_odd(20) #=>  That is an even number.
  puts even_odd("Ruby") #=>  A number was not entered.

  #Metodos realizados em corrente

phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"

#ja utilizamos quando queremos obter um input numérico do usuário gets.chomp.to_i ou to_f

#Métodos predicados - ideal para retorno de booleanos. Geralmente descritos com "?"
puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true

#BANG METHODS
#Alterações "permanentes" da saída dos métodos

whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"

#da forma descrita acima há mudanças apenas quaqndo adicionamos em corrente o "downcase". 

puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"

#com a adiçaõ do exclamação, alteramos permanentemente as chamadas da funçaõ 
