function filtrarMaiores(tabela,limite) 
    local tabela_maior = {}
    for i = 1, #tabela do
        if tabela[i] > limite then
            table.insert(tabela_maior, tabela[i])
        end
    end
    return tabela_maior
end

print("Digite a quantidade de elementos (N):")
local N = tonumber(io.read())

local tabela = {}

for i = 1, N do
    print("Digite o elemento ".. i .. ":")
    local aux = tonumber(io.read())
    table.insert(tabela,aux)  
end

print("Digite o valor limite (K):")
local K = tonumber(io.read())

local tabela2 = filtrarMaiores(tabela,K)


print("--- Elementos maiores que ".. K .. " ---")
for i=1, #tabela2 do
    print(tabela2[i])
end

 
