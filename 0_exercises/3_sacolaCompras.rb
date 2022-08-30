#simples código para praticas o uso de arrays e operçaões com a mesma

iterador = 1
seletor = 0
sacolaCompras = ["uva", "melão"]

while iterador == 1 do
    puts "Digite:\n1-Add elementos na sacola de compras\n2-Retirar produtos da sacola\n3-Ver a lista de compras"
    seletor = gets.chomp.to_i 
    
    operacao = case seletor
        when 1 
            puts "digite o produto que deseja inserir"
            produto = gets.chomp
            sacolaCompras.push(produto)
        when 2
            puts "digite o produto que deseja excluir da lista"
            retirarProduto = Array.new() #inicializando o array que vai retirar os produtos
            retirarProduto.push(gets.chomp) #adicionando o produto que o usuário quer retirar da lista de compras
            sacolaCompras = sacolaCompras - retirarProduto #realizando a retirada do produto da sacola de compras, poderia ser rescrito como sacolaCompras -= retirarProduto
            
            retirarProduto = retirarProduto - retirarProduto  #limpando o array auxiliar
            

        when 3
            puts "sua lista de compras contém: #{sacolaCompras}"
        else 
            puts "teste"
        end

    puts "Deseja realizar mais alguma operação? Digite 1 para sim, e 0 para não"
    iterador = gets.chomp.to_i
end
