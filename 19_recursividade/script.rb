#Recursividade, em poucas palavras, é uma função que chama a si mesma, chamar o mesmo ponto de entrada varias e varias vezes. Seu conceito vem do pensamento de "dividir para conquistar", pois vai selecionar partes de um problema para resolve-lo como um todo, através de um sistema de feedback
# A questão é que qualquer problema que você resolve com recursão, é igualmente solucionável com loops e iteradores. O diferencial vem a partir da diferenciaçaõ disso, pois alguns problemas se iterados ou adicionados dentro de um loop podem acabar estourando ou fazendo mal uso da memória.

#implementação 
#é necessário pensar na forma de escape da recursividade, ou como sair dessa recusrsão. 


def recursividade(contador = 1)

    puts "Recursividade número #{contador}" #vai printar a recursividade
    return if contador == 10 #condição para escape da recursão, logo acima da chamada de recursão
    recursividade(contador+1) #chamada de recursão com gatilho para adicionar o contador.
end


#contador = 1
recursividade() #funciona sem atributos dentro do método pois há uma variável de inicialização em caso de não ser passado um argumento. 


# Leis para executar a recursividade
# - Um algoritmo recursivo deve ter um caso base, ou seja, um ponto onde ele terá fim
# - Um algoritmo recursivo deve mudar o seu estado e se aproximar do caso previsto no critério de parada.
# - O algoritmo recursivo deve chamar a si mesmo repetidamente. 