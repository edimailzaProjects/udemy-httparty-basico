# frozen_string_literal: true

# sem o uso do modulo
describe 'fazer requisicao' do
  it 'put' do
    @body =
      {
        "id": 8,
        "name": 'Edi',
        "last_name": 'Tester',
        "email": 'edi@udemy.qa',
        "age": '30',
        "phone": '12354647',
        "adress": 'Rua QA Tester',
        "state": 'Pernambuco',
        "city": 'RainCife'
      }.to_json

    @headers = {
      'Accept:': 'application/vnd.taskmanager.v2',
      'Content-Type' => 'application/json'
    }
    @request = HTTParty.put('https://api-de-tarefas.herokuapp.com', body: @body, headers: @headers)
  end
end
