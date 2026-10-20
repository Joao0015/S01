class PhoneWave

    def enviar_dmail(mensagem)
        puts "A mensagem: '#{mensagem}' foi enviada ao passado"
    end
end

class MembroDoLab
    attr_reader :numero, :nome

    def initialize(numero, nome)
        @numero = numero
        @nome = nome
    end
end

class LaboratorioDeGadgets
    def initialize
        @phonewave = PhoneWave.new
        @membros = []
    end

    def admitir(membro)
        @membros << membro
        puts "Lab Mem #{membro.numero} : #{membro.nome} admitido."
    end

    def experimento(mensagem)
        @membros.each do |m|
            puts "Lab Num##{m.numero} - #{m.nome}"
        end
        @phonewave.enviar_dmail(mensagem)
    end
end

membro1 = MembroDoLab.new(777, "Dr. Joaquim")
membro2 = MembroDoLab.new(674, "Dr. Robert")

lab = LaboratorioDeGadgets.new

lab.admitir(membro1)
lab.admitir(membro2)
lab.experimento("De volta ao futuro!")

# COMPOSIÇÃO: 
# initialize (@phonewave = PhoneWave.new). 
# O phonewave so existe a partir da criação de um laboratorio, sem o lab, nao existe phonewave

# AGREGAÇÃO:
# os MembroDoLab são criados fora do laboratório (na main) e
# só depois admitidos com admitir(membro), sendo guardados em @membros, passando por referencia.
# Os membros existem mesmo antes de serem admitidos no LaboratorioDeGadgets e continuam existindo caso o laboratorio feche.
