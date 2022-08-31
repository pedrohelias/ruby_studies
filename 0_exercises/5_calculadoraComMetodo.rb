#Praticar métodos em ruby
def soma(a,b)
    resultado = a + b
end

def subtracao(a,b)
    resultado = a - b
end

def multiplicacao(a,b)
    resultado = a * b
end

def divisao(a,b)
    resultado = a / b
end

a = gets.chomp.to_f
b = gets.chomp.to_f

resultSoma = soma(a,b)
resultSub = subtracao(a,b)
resultMult = multiplicacao(a,b)
resultDiv = divisao(a,b)

puts "o resultado das operações realizadas com as entradas a = #{a} e b = #{b} são:\nsoma = #{resultSoma}\nsubtração = #{resultSub}\nmultiplicação = #{resultMult}\ndivisão = #{resultDiv}"
