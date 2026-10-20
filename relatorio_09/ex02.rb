class Instrumentista
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def interpretar(peca)
    raise NotImplementedError, "#{self.class} deve implementar interpretar"
  end
end

class Solista < Instrumentista
  def interpretar(peca)
    puts "#{nome} toca #{peca} com #{instrumento} e conduz a melodia principal."
  end
end

class Acompanhador < Instrumentista
  def interpretar(peca)
    puts "#{nome} toca #{peca} no #{instrumento} e acompanha o ritmo do solista."
  end
end

class Regente
  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  def reger(peca)
    puts "Regente #{@nome} conduz a peça #{peca}."
    @orquestra.each do |o|
      o.interpretar(peca)
    end
  end

  def escalacao
    @orquestra.map { |o| "#{o.class}: #{o.nome}" }
  end
end


kousei = Solista.new("Kousei", "piano")
kaori = Acompanhador.new("Kaori", "violino")
maestro = Regente.new("Takeshi")

maestro.convocar(kousei)
maestro.convocar(kaori)
maestro.reger("Liebesleid")
maestro.escalacao.each { |m| puts m }

caraQualquer = Instrumentista.new("Random", "violino")

# caraQualquer.interpretar("Beethoven")
# HelloWorld.rb:10:in `interpretar': Instrumentista deve implementar interpretar (NotImplementedError)
# 	from HelloWorld.rb:60:in `<top (required)>'
# 	from -e:1:in `load'
# 	from -e:1:in `<main>'