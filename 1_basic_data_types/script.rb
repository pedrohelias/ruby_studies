#TUDO NO RUBY É OBJETO

# Hello World e print no terminal

puts "hello world" #dessa forma realizamos o hello world! ou podemos apenas utilizar o "p" como abaixo:
p 1 #printando um número inteiro aleatorio

# Operações Matemáticas

1 + 1 # adição
1 - 1 # subtração
1 * 2 # multiplicação
10 / 5 # divisao
2 ** 2 # exponente
8 % 2 # módulo(encontrar o resto)

# Tipos de números
# No Ruby há números inteiros e flutuantes, difenciando-se pelos pontos decimais adicionados ao valor, por exemplo 150 e 150.2
# É importante salientar que operações entre inteiros resultam em valores inteiros, por mais que possuam partes fracionárias, como a divisão de 10 por 3. Se fizermos 10/3, obtemos 3. Se adicionarmos um ponto decimal, ao passo que teremos uma nova escrita 10/3.0. então o resultado será 3.3333...

# Conversão de Tipos de números
# A convesão de números no Ruby é bastante simplificada. 

13.to_f #vai converter o número 13 inteiro para flutuante 13.0

13.0.to_i #vai converter o número 13.0 flutuante para inteiro 13. Funciona em vvalores diferewntes de decimal
# é importante citar que nesses processos de conversaõ há apenas o corte da parte fracionário do número. Não há arredondamentos em conversões 
# Há também funções interessantes como .even ou .odd que vaõ retonar um valor booleano conforme a paridade do número. Essas funções são auto-explicativas. 
p 13.even? #retorna true se for par 
p 13.odd? #retorna true se for impar

# Strings
# Há diferenças entre caracteres " e ', vistos em concateção e atribuição
# Há diversas formas possíveis para se concatenar em Ruby: 
p "Concatenando" + " a mensagem" + " presente" #com o uso de soma
p "Concatenando" << " a mensagem" << " presente" #com o uso do menor
p "Concatenando".concat(" esta mensagem").concat(" a esta outra mensagem") # com o uso da função concat()
#SUBSTRINGS
# É possível acessar strings dentro de strings, pesquisa-las e tudo mais 
p "String"[0] #retorna o S
p "String"[0..1] #retorna St
p "String"[0,4] #retorna Stri
p "String"[-1] #vai retornando os carcteres de trás pra frente. No caso retorna o g
#Caracteres de escape possíveis:

# \\  #=> Need a backslash in your string?
# \b  #=> Backspace
# \r  #=> Carriage return, for those of you that love typewriters
# \n  #=> Newline. You'll likely use this one the most.
# \s  #=> Space
# \t  #=> Tab
# \"  #=> Double quotation mark
# \'  #=> Single quotation mark

#Algumns testes que podemos fazer: 

puts "Teste \n de \n Strings\sutilizando caracteres de \t escape. É possível também \"citar qualquer coisa mesmo usando\" aspas duplas. A linguagem entende :)"

#interporlaçaõ de strings: 
# Se quer fazer menção a variáveis externas ao print, é possível realizar utilizando a interpolação. Ex:

nome = "Pedro"

puts "Meu nome é #{nome}"

#Detalhe: Só funciona com aspas duplas.

#Métodos comuns para operar com strings
p "teste".capitalize # vai captalizar a string, resultando em Teste
p "teste".include?("tes") #se a string "teste" conter "tes" ele retorna true 
p "teste".upcase #retorna TESTE. downcase faz o inverso
p "teste".empty? #retorna true se está vazio ou não. 
p "teste".length #retorna o comprimento da string
p "teste".reverse #inverte a srting
p "teste um".split #separa o texto passado em um array de strings
p "teste".split("") #separa a string em carcteres num array
p " teste espaçado  ".strip #vai matar os espaços no inicio e no fim da string

#outras possibilidades são
"he77o".sub("7", "l")           #=> "hel7o"

"he77o".gsub("7", "l")          #=> "hello"

"hello".insert(-1, " dude")     #=> "hello dude"

"hello world".delete("l")       #=> "heo word"

"!".prepend("hello, ", "world") #=> "hello, world!"

#Convertendo objetos para Strings
#É possível realizar operações de conversão semelhates as realizadas entre inteiros e flutuantes
p 5.to_s #vai converter um inteiro 5 em String "5"
p nil.to_s #vai converter nill em "" 
p :symbol.to_s #convertendo simbolos

#SÍMBOLOS
#Strings são alteráveis, sempre que são utilizadas o Ruby precisa guarda-las na memória mesmo que as mesmas já existam. O que difere dos símbolos que são armazenados uma única vez, tendo ganho em velocidade.

#Símbolos são preferíveis em operações com chaves de hashes
#para criar um símbolo, necessita apenas de : e um nome, por exemplo:
:simbolo

#Para verificar a veracidade e diferença entre simbolos que citei, podemos testar a partir do Object ID, que identifica cada objeto
#portanto: 

p "stringteste" == "stringteste" #retorna true pois as Strings são iguais
p "stringteste".object_id == "stringteste".object_id #retorna falso, pois apesar de serem string iguais, o Ruby aloca em diferentes espaços no armazenamento
p :simbolo.object_id ==  :simbolo.object_id #já essa comparação retorna true pois há apenas 1 armazenamento de um simbolo com o respectivo nome. 

#BOOLEANO
#True e false são entidades booleanas clássicas para a maioria das linguagens. Porém, o Ruby possui o "nil" que representa "nada". Tudo no ruby retorna um valor, então quando algum código não tem nada para retornar, ele retorna simplesmente o "nil". 


