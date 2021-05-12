#language: pt

@api_desafio_02
Funcionalidade: api-web | Validar o endpoint enumerations_VRPAT
  Como uma aplicação de APIs
  Quero chamar o endpoint da API
  Para validar a funcionalidade do mesmo

  Cenário: Validar os estabelecimentos do endpoint api-web_comum_enumerations_VRPAT.get
    Quando chamar o endpoint api-web.get
    Então validar o retorno do endpoint api-web.get
