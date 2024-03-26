#!/bin/lua
local palavras = {'gato', 'cachorro', 'canguru', 'alce', 'vaca', 'leopardo', 'tigre', 'lebre', 'pinguim'}
local id = math.random(#palavras)
local palavra = palavras[id]
local forca = {}
local acertos = 0
local vidas = 5
local vitoria = false
--preenche o valor da forca com caractere desconhecido
for i = 1, #palavra do
  forca[i] = "_"
end
-- inicia o jogo
while vidas > 0 and vitoria ~= true do
  print("♡ VIDAS: ".. vidas)
  -- Escreve todos os caracteres da forca
  for i =1, #forca do
    io.write(forca[i] .. " ")
  end

  local letra = io.read():lower()
  --variável que define que ao menos uma letra foi acertada
  local minacerto = false;
  --percorre o array da forca
  for i = 1, #forca do
    -- verifica se a letra digitada corresponde a alguma letra da palavra ainda não digitado na forca
    if letra == palavra:sub(i, i) and letra ~= forca[i] then
      forca[i] = letra
      acertos = acertos + 1
      minacerto = true
    elseif letra == forca[i] then
      print('"'..letra..'" já foi digitado!')
      minacerto = true
    elseif i == #forca and minacerto == false then
      vidas = vidas - 1
    end

  end
  --verifica se o número de acertos tem mesmo tamanho da forca
  if acertos == #forca then
    vitoria = true
  end
end

if vitoria == true then
  print('Parabéns! A palavra era "'..palavra..'"')
else
  print('Que pena! A palavra era "'..palavra..'"')
end
