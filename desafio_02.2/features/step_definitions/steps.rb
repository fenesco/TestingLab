# Primeiro step realizado a requisição do tipo GET para o endpoint e armazenamos em uma váriavel de instância
Quando('chamar o endpoint api-web.get') do
  @api_get = Api.get('/comum/enumerations/VRPAT', verify: false)
end

# Segundo step validamos a responsta desta requisição com rSpec e logamos na console um valor randômico contido na chave typeOfEstablishment
Então('validar o retorno do endpoint api-web.get') do
  response = @api_get
  expect(response).to have_key('typeOfEstablishment')
  log(response['typeOfEstablishment'].sample)
end
