#Os unicos valores que o Ruby considera como falsos são "false" e "nil"
# O numero naõ é considerado "false" no ruby

#o IF no ruby é definido de forma clássica a outras linguagens.
if 1 < 2
    puts "1 é menor que 2"
end

# é necessário o end no fim. Há outra forma que não exige end ao fim: 
puts "O santos é campeão do mundo" if 1 < 2

#Adicionando ELSE e ELSIF
if 1 > 2 
    puts "1 maior que 2"
else
    puts "1 menor que 2"
end

#Com ELSIF

if 1 > 2
    puts "teste1"
elsif 1 == 2
    puts "teste2"
else 
    puts "teste3"
end

#outros caracteres
# "!=" diferente
# == igual 
# > maior que 
# < menor que 
# >= maior ou igual
# <= menor ou igual 

#outra forma de comparação

5.eql?(5.0) #compara se 5 é igual a 5.0

#já o equal verifica se as variaveis possuem o mesmo objeto na memoria

a = 5
b = 5
p a.equal?(b) #deve retornar true 

#SPACESHIP OPERATOR <=> 

#esse operador funciona da seguinte maneira: 
#
#-1 if the value on the left is less than the value on the right;
# 0 if the value on the left is equal to the value on the right; and
# 1 if the value on the left is greater than the value on the right.
#
#Operador mais comumento utilizado para sort functions 

#operadores lógicos:

# || => OR
# && => AND
# "!" => NOT

# O Ruby checa condições lógicas da esquerda para a direita. Neste ponto, há o conhecido short circuit evaluation, que diz que se a expressão da esquerda foi avaliada Verdadeira e acomparação é OR, o restante escrito do lado direito ja não é analisado. 

#CASES -> Semelhante ao clássico switch case. No entanto sua escrita é diferente. Conta com um "else" ao fim para mimetizar um "Default" clássico nessa estrutura. 

avaliacao = "A"

notas_por_avaliacao = case avaliacao
    when "A" then "deu A"
    when "B" then "deu B"
    else "deu cocô"
end

#para coisas mais complexas, remover o then é um bom processo

avaliacao_final = gets.chomp.to_i #coletar a nota do usuário para informar a nota ao mesmo

resultado_avaliacao = case avaliacao_final
    when 10
        puts "nota máxima"
    when 5
        puts "na média"
    else
        puts "ta ferrado"
        
end


#UNLESS -> Semelhante ao if, ela apenas processa o bloco de código caso o que se compara retorne false 

unless 1>2
    puts "ja sabia" #vai obviamente retornar esse texto, pois 1 naõ é maior que 2
end

#é considerado o uso do unless em caso de nao se querer realizar algo quando a condição é true. É mais legível utilizar unless do que " if !true"




