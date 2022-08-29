#Simples bhaskara para treinamento das 4 primeiras unidades
#a formula inicial = delta = b² - 4 * a * c 
#a formula posterior com duas raízes: -b+(sqrt(delta))/2*a
#                                     -b-(sqrt(delta))/2*a

puts "insira o valor de \"a\": " 
a = gets.chomp.to_i

puts "insira o valor de \"b\": "
b = gets.chomp.to_i

puts "insira o valor de \"b\": "
c = gets.chomp.to_i

delta = (b ** 2) - (4 * a * c)

primeiraRaiz = ((-b) + Math.sqrt(delta))/(2 * a)
segundaRaiz = ((-b) - Math.sqrt(delta))/(2 * a)


puts "as duas raízes encontradas foram: #{primeiraRaiz} e #{segundaRaiz}"