#Blocos já são de conhecimento até essa parte
#possuimos single-libe blocks com simples diagramaçaõ com { } -> [1,2,3].each { |num| puts num }
#e multiline blocks com simples diagramação do...end:
# [1,2,3].each do |num|
#     puts num
#   end


#Neste ponto, apresenta-se formas diferentes de se tratar os blocos

#YIELD

def logger 
    yield #vai retirar o controle da execução 
end

logger {puts "teste"}

logger do 
    p [1,2,3]
end 
