# Módulo criado para representar o Client da api a ser testada
module Api
  include HTTParty
  base_uri 'https://portal.vr.com.br/api-web'
  format :json
  headers 'Content-Type': 'application/json'
end
