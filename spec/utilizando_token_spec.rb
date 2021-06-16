# frozen_string_literal: true

# Como usar token e fakers

describe 'usando' do
  it 'token' do
    # Gera um e-mail aleatorio
    @email = Faker::Internet.email

    @body = {
      user: {
        email: @email,
        password: '123456',
        password_confirmation: '123456'
      }
    }.to_json

    @header = {
      Accept: 'application/vnd.taskmanager.v2',
      'Content-Type': 'application/json'
    }

    @criar = Criar.post('/users', body: @body, headers: @header)
    puts @criar
    @meu_token = @criar.parsed_response['data']['attributes']['auth-token']

    @body_one = {
      session: {
        email: @email,
        password: '123456',
        password_confirmation: '123456'
      }
    }

    @header_one = {
      Accept: 'application/vnd.taskmanager.v2',
      'Content-Type': 'application/json',
      Authorization: "#{@meu_token}" # se o token for unico, basta passar ele diretamente
    }

    @login = Criar.post('/sessions/', body: @body_one, headers: @header_one) # fiz o login
    puts @login.body
  end
end
