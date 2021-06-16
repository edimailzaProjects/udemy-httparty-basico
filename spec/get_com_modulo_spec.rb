# frozen_string_literal: true

# Fazendo uso do modulo
describe 'fazer requisicao' do
  it 'get' do
    @com = Contato.get('/contacts')
    puts @com.body
  end
end
