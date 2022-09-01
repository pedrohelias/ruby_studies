#Enumerables são sets de métodos nativos do Ruby, atuantes tanto em arrays quanto em hashes.
#No for do Ruby, o do é opcional

#método EACH - um método super util que resolve quase tudo 
#o each em uma array vai iterar entre os elementos da array e colher cada elemento para um bloco, aonde a task for performada. Ex:

convidados = ["fulano1","fulano2","fulano3","fulano4"]

convidados.each{
    |convidado| puts "Ola " + convidado }#o valor entre as barras é como se fosse nosso iterador, ele vai colher cada informações no indíce do array. É conhecido como variável de bloco
    #Este codigo dentro das Chaves é chamado de BLOCO de código. E o Bloco roda novamente para cada componente do vetor. Tem-se 4 componente, então ele vai rodar 4 vezes 
 
#para instruções mais complexas que não possam conter em uma linha, recomenda-se utilizar o "do...end". Ex:
posicao_na_fila = 0
convidados.each do |convite|
    posicao_na_fila += 1
    puts "bem vindo, " + convite + ". Sua posição na fila é: #{posicao_na_fila}"
end

#Each também funciona para hashes

dadosPessoais = {
    nome: "Pedro",
    segundo_nome: "Helias"
}

dadosPessoais.each {|atKey, atValue| puts "Olá, meu #{atKey} é #{atValue}"     } #o atKey e atValue serão chamados normais, sem considerar a estrutura dos simbolos porque eles são strings normais 

dadosPessoais.each {|dadoUnico| puts "Dado único da estrutura: #{dadoUnico}"} #assim representa toda associação chave valor

# esse método vai retorar os valores interenos independente do que seja realizado dentro do bloco


#EACH WITH INDEX - Vai permitir que se trabalhe com duas instancias de iteração, um pouco mais cmplexo que o EACH. Exemplo:

frutas = ["banana", "maça", "goiaba", "uva"]
frutas_selecionadas = []
frutas.each_with_index{ |fruta, index| 
    if index.even?  #ou  if index % 2 == 0
        puts fruta #colocando apenas frutas com indice par, banana e goiaba
        #frutas_selecionadas.push(fruta.upcase) #este é um exemplo caso queiramos reailizar alguma operação dentro do each, devemos chamar outro vetor
    end
}

#Esse método novamente vai trazer a array original, vaiapenas trabalhar em cima da manipulação dela

#MÉTODO MAP - Vai realizar transformações de acordo com o que o bloco de código solicita
#Com o map toda operações interna fica mais facil

amigos = ["amigo 1","amigo 2","amigo 3","amigo 4",]
amigos.map {|amigo| puts amigo.upcase} #agora sim sendo possível alterar os dados da array e retornar uma nova array com alterações desejadas

#É possível alterar valores dentro de vetores com o map e gsub(o que desejo alterar, aonde desejo alterar)
amigos.map {|amigo| puts amigo.gsub("amigo", "friend")}

#é possível tambem realizar operações matematicas

valor = [10, 20, 30, 40, 50]
valor.map {|numeros| puts numeros - 5} #vai printar todos numeros reduzidos em 5

#O MAP FUNCIONA SEMPRE QUE VOCE QUER RETORNAR UMA ARRAY ALTERADA CONFORME O BLOCODE CODIGO 

#O METODO SELECT
# O metodo select apenas retorna os itens de uma arrays os quais passaram por um processo de filtragem e retornaram valor True. SELECT também é denotado como Filtro

frutasCesta = ["uva", "banana", "morango", "abacaxi"]
frutasCesta.select{|selecao| selecao != "abacaxi"} #vai retornar em true or false 

#FUnciona também com hashes

frutasDoces = {
    uva: "sim",
    banana: "não",
    morango: "sim",
    abacaxi: "não"
}

frutasDoces.select{|key,value| puts value!="não"} # ele vai comprar se a partir da key e do value, printar apenas quem possue value = "sim". É como se tiver um if em "value!="não"". De um jeito direto, só vou printar aonde value é igual a sim

#O SELECT É BOM PARA FILTRAR

#METOOD REDUCE, também chamado de inject, é útil quando se desejaa saida de um unico objeto
# O Primeiro bloco do reduce é tido como Acumulador, ou seja, o resultado de cada iteração é armazenada nele e depois realiza-se a proxima teraçaõ. Por padrão, o valor do acumulador é o primeiro valor da coleçaõ. Exemplo

colecao = [1,2,3,4]
puts colecao.reduce {|resultadoSoma, numeros| resultadoSoma + numeros} #vai somar todos os valores no array

#podemos passar um valor padrão para o acumulador
puts colecao.reduce(1000) {|resultadoSoma, numeros| resultadoSoma + numeros} #vai somar 1000 aos outros valores 

#exemplo Votos

votos = ["Lula", "Lula","Lula","Lula","Lula","Bolsonaro", "Bolsonaro", "Bolsonaro", ]

eleicao = votos.reduce(Hash.new(0)) do 
    |resultado, votos|
    resultado[votos] += 1
    resultado
end

puts eleicao #vai retornar a soma 

#ate em metodos mais cmplexos, tiramos do bloco
# se o resultado é meio complexo, o reduce retorna um objeto

#Bang methods conhecido por "!"

#para reutilizarmos esse métodos de melhor forma, podemos fazer assim: 

cartinhas = ["mercador", "raio", "contramagica", "portão"]

cartasSelecionadas = cartinhas.select{|card| card != "contramagica"} #é mais facil colocar uma ouutra variavel para receber a saida
puts cartasSelecionadas

#TAmbém é possível colocar isso numa função

def colecao(cards)
    cards.select{|card| card != "contramagica"} #colocando um função pŕeconstruida dentro de outra função
end

cartinhas = ["mercador", "raio", "contramagica", "portão"] #argumento da função

puts novaColecao = colecao(cartinhas) #funçaõ vai trabalhar com esse vetor 
