# frozen_string_literal: true

# Sempre usar _spec.rb no final de cada arquivo no rspec
# Describe eh um metodo que fcria um grupo exemplo
# Ja o It serve para descrever o metodo que sera testado
#
# Aula 1 - Trabalhando com describe it

describe 'description' do
  it 'deve somar dois numeros positivos' do
    total = 2 + 2
    expect(total).to eql 4
  end

  it 'deve somar dois numeros negativos' do
    total = - 2 + -2
    expect(total).to eql(-4)
  end
end
