#!/bin/lua
local tamanhoatual = 1;
local tamanhopiramide = io.read("n")
for b = 1, tamanhopiramide do
  for a = 1, tamanhopiramide - tamanhoatual/2 do
    io.write " "
  end
  for a = 1, tamanhoatual do
    io.write "o"
  end
  print ""
  tamanhoatual = tamanhoatual + 2
end
