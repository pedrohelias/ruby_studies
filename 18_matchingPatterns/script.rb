#O formato básico de um Matching Patterns se da pelo Case Statement. A diferença é que ao inves de utilizarmos o when, utilizaremos o in

grade = 'C'

case grade
when 'A' then puts 'Amazing effort'
when 'B' then puts 'Good work'
when 'C' then puts 'Well done'
when 'D' then puts 'Room for improvement'
else puts 'See me'
end

#se altera para:

grade = 'C'

case grade
in 'A' then puts 'Amazing effort'
in 'B' then puts 'Good work'
in 'C' then puts 'Well done'
in 'D' then puts 'Room for improvement'
else puts 'See me'
end

# => Well done

#Então ocorre alteraçaõ na sintaxe

#O segundo formato é algo que já vimos, com case rocket

login = { username: 'hornby', password: 'iliketrains' }

login => { username: username }

puts "Logged in with username #{username}"

#=> Logged in with username hornby


#PATTERNS
#há multiplas formas de se realizar um matching entre estruturas de dados

#Any Ruby object which is matched using ===. The Object Pattern.
#A variable capture / Variable Pattern
#An As Pattern
#An Alternative Pattern
#A Guard Condition
#An Array Pattern
#A Hash Pattern

#RETURN VALUES
#Há duas possibilidades de retorno, uma é TRUE, e a outra é NoMatchingPatternError sempre que um match não pode ser encontrado

#PAra comparar dois objetos, usamos ===