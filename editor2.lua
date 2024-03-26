#!/bin/lua
io.write ("Digite o nome do arquivo: ")
local filename = io.read()
print("\27[32mPressione ctrl+d para entrar no menu\27[0m")
local leitor = io.read("a")
local txt = leitor
--assina texto digitado em um arquivo
local arquivo = io.open(filename, "w")
if arquivo then
arquivo:write(txt)
arquivo:close()
end
print("\27[32m1\27[0m: Editar linha\n\27[32m2\27[0m: Reescrever\n\27[32mCtrl+d\27[0m: Salvar e sair")

arquivo = io.open(filename, "r")
if not arquivo then
    print("Erro ao abrir o arquivo.")
    return
end
local linhas = {}
while true do
    local linha = arquivo:read("*line")
    if not linha then
        break
    end
    table.insert(linhas, linha)
end

arquivo:close()

for i, linha in ipairs(linhas) do
    print("\27[32m"..i.. "\27[0m) " .. linha)
end

--arquivado
