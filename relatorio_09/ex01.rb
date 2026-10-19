class CoquetelAfterlife

    attr_reader:nome

    def initialize(nome,preco)
        @nome = nome
        @_preco = preco
    end

    def preco
        @_preco
    end

    def preco=(valor)
        if valor >= 5 && valor <=200
            @_preco = valor
        else
            puts "Preco invalido!"
        end
    end

    def ficha
        "O #{nome} custa #{preco}"
    end

end

class DrinkDeLenda < CoquetelAfterlife
    attr_reader:lenda

    def initialize(nome,preco,lenda)
        super(nome,preco)
        @lenda = lenda
    end

    def ficha
        super + ", homenagem a #{lenda}"
    end
end

bebidas = [CoquetelAfterlife.new("Rum(O) de Casa", 27), DrinkDeLenda.new("Baludo",70,"Tkzin"), DrinkDeLenda.new("Honra Magistral", 777, "Erde")]

bebidas.each do |b|
    puts b.ficha
end

bebidas[2].preco = 500

puts bebidas[2].ficha

# bebidas[0].nome = "Cuba Libre"

# HelloWorld.rb:51:in `<top (required)>': undefined method `nome=' for an instance of CoquetelAfterlife (NoMethodError)

# bebidas[0].nome = "Cuba Libre"
#           ^^^^^^^
# 	from -e:1:in `load'
# 	from -e:1:in `<main>'

#Nao deixa fazer isso pois nao tem um setter










