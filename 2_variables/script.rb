# A declaração de variaveis no Ruby é totalmente simplificada, como exemplo:

pedra = "Rubi"
dureza_pedra = 9

#Também é possível realizar operações ou assinalar valores de variaveis em outros

soma1_e_1 = 1 + 1 

#Ou algo mais complexo como abaixo: 

nome = "Pedro"
sobrenome = " Carlos"

p nomeConcatenado1 = nome + sobrenome
p nomeConcatenado2 = nome << sobrenome
p nomeConcatenado3 = "".concat(nome).concat(sobrenome)  

# Variaveis são reutilizadas, ou seja, será possível adicionar novos valores que substituirão valores antigos 

# Operações entre variáveis repetidas também é possível no ruby

variavel1 = 10
variavel1 += 2 #isso é a mesma coisa que variavel1  = variavel1 + 2 

# o mesmo vale para as formas abaixo: 

variavel1 -= 2
variavel1 *= 2
variavel1 /= 2

#variaveis que contem o mesmo conteudo estão ligadas de uma forma intrinseca, ao ponto de alterações refletirem entre elas, por exemplo:

carroAno = "carro1"
carro2022 = carroAno #nesse ponto tanto carroAno quanto carro 2022 possuem o mesmo valor
p carroAno
p carro2022
carroAno.upcase! #exclamação quando se utiliza uma variavel
p carroAno
p carro2022
