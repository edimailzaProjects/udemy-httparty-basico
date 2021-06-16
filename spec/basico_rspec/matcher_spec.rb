# frozen_string_literal: true

# rspec-expectations eh composto por varios matchers
# inicia com expect(condicado).to ou expect(condicado).not_to
#
# Aula 4 - Trabalhando com expectations

describe 'matchers' do
  context 'deve exibir macthers' do
    let(:resultado_positivo) { 2 + 2 }
    let(:resultado_booleano) { false }

    it 'diferente' do
      expect(resultado_positivo).not_to eql 10
    end

    it 'verdadeiro' do
      expect(resultado_booleano).not_to be(true)
    end

    it 'nao nulo' do
      expect(resultado_booleano).not_to be nil
    end
  end
end
