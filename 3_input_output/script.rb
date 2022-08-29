#Comandos de output
#comando Print, popular entre linguagens de programação
print "teste 1, 2, 3..." #não vai dar salto de linha automaticamente
#basicamente a diferença entre eles é que o print escreve tudo na mesma linha. O puts já da o salto da informação
puts "teste 1, 2, 3..."

#Comando de input
#para obter a entrada de um usuário, utiliza-se gets
#gets #vai esperar um input de usuário e logo em seguida finalizar o programa.
#Similarmente ao puts, ele fará um salto de linha após o input do usuário
# O comando gets.chomp vai fazer a mesma coisa, recolher um input. Porém naõ vai saltar linha 

#Programa da soma. É necessário sempre converter a entrada, pois le-se string mas deseja-se realizar a operação com inteiros 

puts "Adicione um valor!"
valor1 = gets.chomp.to_i
puts "Você adicionou o valor #{valor1}!, agora adicione mais um valor! "
valor2 = gets.chomp.to_i
valor3 = valor1 + valor2
puts "Agora você adicionou o valor #{valor2}! O resultado final da soma é: #{valor3}"