#!/bin/lua
local numero1 = 0
local numero2 = 1

print "Digite o tamanho da escala fibonacci:"
local tamanho = io.read("n")

for ordemnum =  1, tamanho do
print (ordemnum .. ") " .. numero1)
local numero3 = numero1 + numero2
numero1 = numero2
numero2 = numero3
end
