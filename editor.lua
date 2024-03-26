#!/bin/lua
io.write ("Digite o nome do arquivo: ")
local filename = io.read()
print("\27[32mPressione ctrl+d para fechar e salvar\27[0m")
local leitor = io.read("a")
local txt = leitor
--assina texto digitado em um arquivo
local arquivo = io.open(filename, "w")
if arquivo then
arquivo:write(txt)
arquivo:close()
end
