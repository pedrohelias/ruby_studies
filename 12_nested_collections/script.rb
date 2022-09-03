#Coleções nested são uma forma mais complexa de alocar dados, uma estrutura mais complexa, como uma array de arrays, ou um hash de hashes. A estrutura nested pode ser útil para armazenas dados similares numa mesma coleçaõ 

#Exemplos NESTED ARRAY

test_scores = [
    [97, 76, 79, 93],
    [79, 84, 76, 79],
    [88, 67, 64, 76],
    [94, 55, 67, 81]
  ]
  
  teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
  ]

  #Como é possívle ver, são arrays de arrays

#ACESSAR NESTED ARRAY
#para acessar essas estruturas é relativamente fácil: Partindo do ponto que os valores de um array possui 1 índice, há de supor também que para arrays de arrays, trabalharemos com 2 índices. Logo

teacher_mailboxes[1][1] #=> Lewis

#Também vale a regra que ńúmeros negativos retornam arrays ao fim da coleçaõ 

#CRIANDO ARRAYS NESTED
#É necessário colocar entre chaves as arrays internas, e por fora a array externa. Ou seja, o exemplo abaixo criará Array1[Array2, Array3, Array4]

immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000 #aqui alteramos apenas a posição 0,0, ou seja, naõ vai alterar o restante 
#=> 1000
immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]

#esse comportamento se dá porque os argumentos de um array.new(tamanhoDoArray,valorPadrão) apenas cria a nested Array, porém não causa independencia. Então, temos que trocar Array.new(3, Array.new(2)) por Array.new(3){Array.new(2)}

#Adicionando e Removendo Elementos
#O Push e o << ainda funncionam para esse tipo de método 

test_scores << [100, 99, 98, 97] #lembrando que desse jeito o vetor resultante vai para o final da fila
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100) #dessa forma adicionamos um valor ao final da array, alocada em 0
#=> [97, 76, 79, 93, 100]
test_scores
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

#COM O METODO ABAIXO ELIMINAMOS 

test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop
#=> 100
test_scores
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]


#ITERANDO PELA ARRAY
#Utilizaremos each_with_index
#Fica mais simples se pensarmos em nested Arrays como uma matriz de elementos, com linhas e colunas 

teacher_mailboxes.each_with_index do |row, row_index|
    puts "Row:#{row_index} = #{row}"
end
  #=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
  #=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
  #=> Row:2 = ["Perez", "Scott", "Smith", "Young"]
  #=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]
  
#Se precisarmos apenas do nome dos professores, podemos usar o Flatten 
teacher_mailboxes.flatten.each do |teacher|
    puts "#{teacher} is amazing!"
  end
  #=> Adams is amazing!
  #=> Baker is amazing!
  #=> Clark is amazing!
  #=> Davis is amazing!
  #=> Jones is amazing!
  #=> Lewis is amazing!
  #=> Lopez is amazing!
  #=> Moore is amazing!
  #=> Perez is amazing!
  #=> Scott is amazing!
  #=> Smith is amazing!
  #=> Young is amazing!
  #=> ["Adams", "Baker", "Clark", "Davis", "Jones", "Lewis", "Lopez", "Moore", "Perez", "Scott", "Smith", "Young"]

#NESTED HASH

# um exemplo de hash multidimensional 

vehicles = {
    alice: {year: 2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
  }

#O Acessp também é simliar (Estamos tratando de simbolos, então a semântica deve ser relativa ao símbolo, assim   :simbolo)

vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"

#Lembrando que para add informações, ou atualizar, o funcionamento é semelhante a hashes normais. Vai adicionar ou atualizar em caso de alteração em um campo existente 

#é possível tambem adicionar apenas um unico campo 

vehicles[:dave][:color] = "red"
#=> "red"

#Deleção também segue a mesma lógica 
vehicles.delete(:blake)

#DEleção específica interna a uma entidade da hash 
vehicles[:dave].delete(:color)

#Alguns método úteis
#Select - vai deferir do que ja fazemos ao adicionar mais 1 iterador 
vehicles.select { |name, data| data[:year] >= 2020 } 
#=> {:caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}

vehicles.collect { |name, data| name if data[:year] >= 2020 }
#=> [nil, :caleb, :dave]

#Nestte caso, onde não há acertivas corretas, retorna true. Para evitar isso, utilizar compact

vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact
#=> [:caleb, :dave]

#pode ser feitocom filtermap
vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
#=> [:caleb, :dave]