#!/bin/lua
print "Digite o tamanho da piramide: "
local tamanhopiramide = io.read("n")
for tamanhoatual = 1, tamanhopiramide do
  local espacos = tamanhopiramide - tamanhoatual
  local cicurlos = tamanhoatual * 2 - 1
  print((" "):rep(espacos) .. ("o"):rep(cicurlos))
end
