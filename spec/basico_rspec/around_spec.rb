# frozen_string_literal: true

# Hooks(Around) nada mais eh que um bloco que executa o
# Before e o After dentro dele
#
# Aula 6 - Trabalhando com Hooks(Around)

describe 'usando around' do
  # around(:each) do |testes|
  #   puts ' Equivalente ao before: executando comandos antes dos testes'
  #   testes.run
  #   puts ' Equivalente ao after: executando comandos depois dos testes'
  # end

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

    after(:each) do
      puts 'execute depois de cada teste'
    end
  end
end
