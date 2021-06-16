# frozen_string_literal: true

# A tag possibilita escolher qual suite de testes rodar
#
# Aula 7 - Trabalhando com tags

describe 'trabalhando', teste_tag: true do
  it 'com tag' do
    puts 'usei a tag de nome teste_tag'
  end
end

describe 'andando', :teste_simbolo do
  it 'com tag um' do
    puts 'usei a tag de nome teste_simbolo'
  end
end

# nao quero que rode esta tag de baixo

describe 'correndo', :nao_teste_tag do
  it 'com tag dois' do
    puts 'usei a tag de nome nao_teste_tag'
  end
end
