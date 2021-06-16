# frozen_string_literal: true

# sem o uso do modulo
describe 'fazer requisicao' do
  it 'delete' do
    HTTParty.delete('https://api-de-tarefas.herokuapp.com/contacts/12')
  end
end
