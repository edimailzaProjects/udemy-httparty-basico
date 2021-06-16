# frozen_string_literal: true

# Todas as vezes que eu chamar este modulo, a url padrao sera a
# fornecida em base_uri e tera seu header com as chaves Accept
# e Content-Type e seus values conforme os parametros ao lado deles
#
# Aula 8 - Configurando URL com URI e Opcoes
module Contato
  include HTTParty
  # A url base
  base_uri CONFIG['url_padrao'] #esta em meu .yaml que eh configuravel
  # Opcoes do meu service
  format :json
  headers Accept: 'application/vnd.taskmanager.v2',
                  'Content-Type' => 'application/json'
end
