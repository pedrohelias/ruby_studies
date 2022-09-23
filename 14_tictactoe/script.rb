# puts "[a0] [a1] [a2]\n[b0] [b1] [b2]\n[c0] [c1] [c2]\n"
empate = false
vitoria = false 
a0 = "a0"
a1 = "a1"
a2 = "a2"
b0 = "b0"
b1 = "b1"
b2 = "b2"
c0 = "c0"
c1 = "c1"
c2 = "c2"
alternador = true 



class Jogador
    attr_reader :nome, :simbolo

    def initialize(nome, simbolo)
        @nome = nome
        @simbolo = simbolo 
    end

    public def jogada
        puts "O jogaodor #{nome} fará uma jogada com #{simbolo}"
        puts "Onde deseja inserir?"
        @espaco = gets.chomp.to_i
        return @espaco
    end

end

p1 = Jogador.new("Pedro", "X")
p2 = Jogador.new("Pedro", "0")

while (!vitoria )

    puts "[#{a0}] [#{a1}] [#{a2}]\n[#{b0}] [#{b1}] [#{b2}]\n[#{c0}] [#{c1}] [#{c2}]\n"

    puts "testando"
    puts "insira um valor"
    valor = gets.chomp
    
    if alternador
        escrita = p1.simbolo
        alternador = false 
    else
        escrita = p2.simbolo
        alternador = true
    end


    redefinidor = case valor 
    when "a0" 
        a0 = escrita
    when "a1" 
        a1 = escrita
    when "a2" 
        a2 = escrita
    when "b0" 
        b0 = escrita
    when "b1" 
        b1 = escrita
    when "b2" 
        b2 = escrita
    when "c0" 
        c0 = escrita
    when "c1" 
        c1 = escrita
    when "c2" 
        c2 = escrita
    else
        puts "teste"
    end



end 


#teste = Jogador.new("Pedro", "X")
#teste.jogada
#teste2 = Jogador.new("Carlos", "O")
#teste2.jogada


