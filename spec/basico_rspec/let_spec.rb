# frozen_string_literal: true

# Let: ao inves de usar um bloco Before para criar uma variavel de instancia,
# use o Let: a variavel eh carregada apenas quando eh utilizada pela primeira
# vez no teste e fica na cache ate o teste em questao terminar
#
# Aula 3 - Trabalhando com let

describe 'soma' do
  context 'deve somar dois numeros' do
    let(:resultado_positivo) { 2 + 2 }
    let(:resultado_negativo) { resultado_positivo + - 8 }
    it 'positivos' do
      expect(resultado_positivo).to eql 4
    end

    it 'negativos' do
      expect(resultado_negativo).to eq(-4)
    end
  end
end
