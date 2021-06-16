# frozen_string_literal: true

# Contexto, como o nome diz, contextualiza um bloco de testes
#
# Aula 2 - trabalhando com contexto

describe 'soma' do
  context 'deve somar dois numeros' do
    it 'positivos' do
      total = 2 + 2
      expect(total).to eql 4
    end

    it 'negativos' do
      total = - 2 + -2
      expect(total).to eql(-4)
    end
  end
end
