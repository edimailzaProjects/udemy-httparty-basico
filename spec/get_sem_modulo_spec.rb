# frozen_string_literal: true

describe 'fazer requisicao' do
  it 'get sem usar o modulo - trazer todos os contatos' do
    @sem = HTTParty.get('https://api-de-tarefas.herokuapp.com//contacts')
  end

  it 'get sem usar o modulo - trazer um contato' do
    @sem = HTTParty.get('https://api-de-tarefas.herokuapp.com//contacts/22')
  end
end
