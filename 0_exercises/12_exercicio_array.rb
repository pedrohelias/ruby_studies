class Ordena 
    attr_accessor :vetorInput

    def initialize(vetorInput)
        @vetorInput = vetorInput
    end

    def ordena
        valorInicial = vetorInput[0]
        contador = 0
        vetorNovo = []
        vetorInput.each do |iteracao|
            if iteracao % 2 == 0
                vetorNovo[contador] = "Par"
            else
                vetorNovo[contador] = "Impar"
            end
            contador = contador + 1
        end

        puts "#{vetorNovo}"
        
    end

    

end

vetor = [5,4,2,1,8,7,9]

vetor1 = Ordena.new(vetor)
vetor1.ordena