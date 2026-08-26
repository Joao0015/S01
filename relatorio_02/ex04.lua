
function calcularMedia(a,b)
    local media = (a+b)/2
    return media
end
function calcularDiferencaAbsoluta(a,b)
    local dif = a-b
    if dif < 0 then
        return -1*dif
    else
        return dif
    end

end
function encontrarMaior(a,b)
    if a > b then
      return a
    else
      return b
    end
end

function analisarNumeros(n1,n2,operacao)
    if operacao == "media" then
        return calcularMedia(n1,n2)
    elseif operacao == "maior" then
        return encontrarMaior(n1,n2)
    elseif operacao == "diferenca" then
        return calcularDiferencaAbsoluta(n1,n2)
    else
        return "Operação inválida!"
    end
end

print("Digite o primeiro numero:")
local n1 = tonumber(io.read())

print("Digite o segundo numero:")
local n2 = tonumber(io.read())

print("Digite a operalçao (\"media\" , \"maior\", ou \"diferenca\"):")
local operacao = tostring(io.read())

local resultado = analisarNumeros(n1,n2,operacao)
print("Resultado:" .. resultado)
