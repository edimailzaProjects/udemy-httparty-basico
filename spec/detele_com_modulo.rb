# frozen_string_literal: true

# com o uso do modulo
describe 'fazer requisicao' do
  it 'delete' do
    Contato.delete('/contacts/12')
  end
end
