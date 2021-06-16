# frozen_string_literal: true

module Criar
  include HTTParty
  base_uri CONFIG['url_padrao'] # esta em meu .yaml que eh configuravel
  format :json
  headers Accept: 'application/vnd.taskmanager.v2',
          'Content-Type' => 'application/json'
end
