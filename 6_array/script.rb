#O Ruby representa coleções de dados em forma de arrays. Arrays ordenadas e indexadas. Arrays no Ruby podem conter diversas variáveis, desde números, strings, ou objetos, apesar de que se recomenda manter apenas um tipo de variável, ou variáveis semelhantes numa mesma array. 

#ARRAYS
#Duas arrays básicas, classicas em muitas linguagens

listaFrutas = ["abacate", "mamão", "limão", "uva"]
listaNotas = [1.2, 2.4, 1.3, 1.5]

#Arrays também pode ser chamadas a partir do método "New". Neste caso há dois argumentos: O primeiro é o range e o segundo é o valor padrão
Array.new() #assim cria-se um array vazio
Array.new(2,"teste") #["teste","teste"]
Array.new(3) #[nil,nil,nil]

#O Acesso a esses elementos é a partir dos indices, clássico para varias linguagens

listaFrutas[2] #limão

#Há duas possibilidades chamadas First e Last, que retornam uma nova array contendo os dados citados. Há um argumento interno a essa chamada, que cita a quantidade de termos adicionados nessa array. E last de tras pra frente 

puts listaFrutas.first(2) #retorna abacate e mamão

#Adicionando e removendo elementos 
#para adicionar elementos no array, utiliza-se push e <<. Ambos comandos vão add elementos no fim do array. O comando pop vai remover o elemento mais ao fim do array e retornar o elemento removido 

arrayTeste = [1,2]
arrayTeste.push(3,4) #[1,2,3,4]

#Metodos shift e unshift são usados pra add e remover elementos no inicio do array. A diferença é que o método shift remove e retorna o elemento adicionado e o unshift add e retorna toda a array

arrayTeste = [1,2,3]
arrayTeste.shift
puts arrayTeste

#Operações entre arrays Adição e soma 

#seja realizando array1 + array2, ou array1.concat(array2), vamos obter duas arrays concatenadas

array1 = [1,2,3]
array2 = [4,5,6]
array3 = array1 + array2
array4 = array1.concat(array2)
puts "#{array3}" 
puts "#{array4}"

#ambas arrays darão o mesmo resultado

# A subtração é basicamente uma intersecção de dois conjuntos, matematicamente falando 

array1 = [1,2,3,3,4,5]
array2 = [1,2,3]
array3 = array1 - array2
puts "#{array3}" #vai resultar [4,5]

#O Ruby disponibiliza muitos métodos para manipulação de arrays(150+), vale a pena verificar na documentação. Exemplos:

#[].empty?               #=> true
#[[]].empty?             #=> false
#[1, 2].empty?           #=> false

#[1, 2, 3].length        #=> 3

#[1, 2, 3].reverse       #=> [3, 2, 1]

#[1, 2, 3].include?(3)   #=> true
#[1, 2, 3].include?("3") #=> false

#[1, 2, 3].join          #=> "123"
#[1, 2, 3].join("-")     #=> "1-2-3"

