#loops no Ruby
#LOOP
#sintaxe
#não é um loop muito comum
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end


#WHILE LOOP
i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end

#outro exemplo
#respota = gets.chomp 
#while respota != "yes" do
#    puts "Will you go to prom with me?"
#    respota = gets.chomp
#end

#loop UNTIL. È o oposto do loop while. Enquanto um loop while continua enquanto a condição for true, o UNTIL continua enquanto a condição for falsa. 

#until gets.chomp == "yes" do
#    puts "Will you go to prom with me?"
#  end

#RANGES - quando se conhece as repetições que devem ser executadas, quando se conhece o intervalo
#(1..5)      # inclusive range: 1, 2, 3, 4, 5
#(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
#('a'..'d')  # a, b, c, d

#FOR LOOPS - talvez o mais clássico das linguagens
# for i in 0..5 #range de 0,1,2,3,4,5
# puts "#{i} zombies incoming!"
# end


#TIMES LOOP
#quando se necessita realizar um loop num intervalo conhecido. 
# 5.times do
#puts "Hello, world!"
#end

#UPTO e DOWNTO
#quando se deseja iterar a partir de um range que não necessariamente inicie com 0. 
#5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

#10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5
