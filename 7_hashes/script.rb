#hashes são coleções mais avançadas de dados e similar a objetos em javascript e Dicionarios em python 
#criando hashes 

my_hash = {
    "nome" => "Pedro Helias Carlos",
    "idade" => 26,
    "um campo vazio :)" => {},
    "doces preferidos" => ["chocolate branco", "pudim", "torta de abacaxi"]
}

#as nomenclaturas, titulos ou palavras a esquerda da seta(hash rocket) são as KEYS, e os valores a direita são os VALUES

#assim como as arrays é possível criar uma Hash com um método específico

hash2 = Hash.new #vai criar uma hash vazia 

# éimportante citar que chaves também podem ser símbolos ou numeros 

#Para acessar os valores nas hashes, simplesmente pesquisa-se como arrays. Porém a pesquisa deve ser realizada utilziando as chaves 

puts my_hash["nome"] #vai imprimir o nome 
# Ao tentar acesasr keys que não existem na hash, o sistema devolve nil
#é possível utilizar o .fetch para retornar algum erro caso a chave não exista 
puts my_hash.fetch("nome")
# de outra forma é possível retornar um valor default em caso da key não existir 
puts my_hash.fetch("nomes", "nomeDefault")


#Adicionando e alterando dados 
#é possível adicioanr novas key => Values, ou alterar valores de keys já existentes 

hash_teste = {
    "nome" => "Pedro Helias Carlos",
    "idade" => 27,
    "sexo" => "Masculino"
}

hash_teste["nome"] = "Pedro Helias" #alterando o nome completo
hash_teste["cidade"] = "Brasília" #adicionaod uma key => value

#REMOVENDO DADOS
# utiliza-se "delete" para remover informações das hashes

hash_teste.delete("cidade") #vai deletar  

#dois métodos importantes e úteis para hashes
#books = {
#    "Infinite Jest" => "David Foster Wallace",
#    "Into the Wild" => "Jon Krakauer"
#  }
  
#  books.keys      #=> ["Infinite Jest", "Into the Wild"]
#  books.values    #=> ["David Foster Wallace", "Jon Krakauer"]



#Unindo duas hashes
#existe um método que executa isso sem muito custo

hash1 = {"a" => 2, "b" => 4}
hash2 = {"b" => 6, "c" => 8}

puts hash1.merge(hash2) #vai adicionar a hash2 na hash1, além de atualizar o valor de b. 

#Simbolos nas hashes. Na vida real é provavel que se verifique mais simbolos do que arrays, pelo simples fato que simbolso são mais performaticos. Neste caso, temos: 

# 'Rocket' syntax
american_cars = {
    :chevrolet => "Corvette",
    :ford => "Mustang",
    :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
    honda: "Accord",
    toyota: "Corolla",
    nissan: "Altima"
}

#isso é funcional apenas para simbolos,então "10: algo" naõ vai funcioanr 
#independente da sintaxe escolhida,o acesso a mesma sera realizada da mesma forma 
american_cars[:ford]    #=> "Mustang"
japanese_cars[:honda]   #=> "Accord"

japanese_cars[:mazda] = "subaru" #a adição de dados nessa forma 
