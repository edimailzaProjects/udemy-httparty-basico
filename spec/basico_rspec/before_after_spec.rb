# frozen_string_literal: true

# hooks trabalha com acoes a serem executadas antes
# ou depois de cada suite de testes e usamos before e after
#
# Aula 5 - Trabalhando com Before e After

describe 'usando hooks' do 
  context 'deve exibir macthers' do
    # before(:each) do
    #   puts 'execute antes de cada teste'
    # end

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

    # after(:each) do
    #   puts 'execute depois de cada teste'
    # end
  end
end
