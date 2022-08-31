#O intuito do código é verificar o valor do item na sacola de compras e soma-lo aos demais


soma = 0

sacolaCompras = {
    banana: 2.99,
    abacate: 1.59,
    melão: 2.00
}

for k, v in sacolaCompras
    puts "O produto é #{k} com preço de #{v}" #dessa forma vai printar a chave e o valor
end

for a, b in sacolaCompras
    soma += b #vai somando produto por produto
end

puts soma

