# frozen_string_literal: true

# Com o uso do modulo
# Nao precisa do headers no post, pois ja foi definido no modulo
describe 'fazer requisicao' do
  it 'post' do
    @body =
      {
        "name": 'Edi',
        "last_name": 'Tester',
        "email": 'edii@udemy.qa',
        "age": '30',
        "phone": '12354647',
        "adress": 'Rua QA Tester',
        "state": 'Pernambuco',
        "city": 'RainCife'
      }.to_json
    Contato.post('/contacts', body: @body)
  end
end
