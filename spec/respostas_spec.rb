# frozen_string_literal: true

# Validacao de respostas
describe 'fazer requisicao' do
  it 'get' do
    @com = Contato.get('/contacts/23')
    # puts @com.code #tanto faz com ou sem .response
    # expect(@com.response.code).to eql '200'
    # puts @com.body
    # pegando um campo dentro de outro
    puts @com.parsed_response['data']['attributes']['name']
    expect(@com.parsed_response['data']['attributes']['name']).to eql 'Edi'
    expect(@com.parsed_response['data']['attributes']['last-name']).to eql 'Tester'
    expect(@com.response.code).to eql '200'
  end
end
