module Depoente
    def depor
        raise NotImplementedError, "#{self.class} deve implementar depor"
    end
end

module Detivel
    def ser_detido
        puts "#{@nome} foi levada pela Scotland Yard"
    end
end

class Envolvido
    attr_reader :nome

    def initialize(nome)
        @nome = nome
    end
end

class TestemunhaOcular < Envolvido

    include Depoente

    def depor
        puts "#{@nome} viu o assalto"
    end
end

class SuspeitoDoCrime < Envolvido
    include Depoente
    include Detivel

    def depor
        puts "#{nome} - alibi: Foi visto por cameras em sua casa no horario do crime" 
    end
end

class Investigacao 

    def initialize(caso)
        @caso = caso
        @envolvidos = []
    end

    def registrar(envolvido)
        @envolvidos << envolvido
    end

    def ouvir_todos
        puts "Caso: #{@caso}"
        @envolvidos.each do |e|
            e.depor
        end
    end

    def acionar_scotland_yard
        puts "Scotland Yard acionada\n\n"
        detiveis = @envolvidos.select {|e| e.respond_to?(:ser_detido)}
        detiveis.each do |d|
            d.ser_detido
        end
    end
end
    

ze   = TestemunhaOcular.new("Ze do buteco")
dede = SuspeitoDoCrime.new("Dede")
irene    = SuspeitoDoCrime.new("Irene")

investigacao = Investigacao.new("O Assalto ao Banco de Londres")
investigacao.registrar(ze)
investigacao.registrar(dede)
investigacao.registrar(irene)

investigacao.ouvir_todos
investigacao.acionar_scotland_yard