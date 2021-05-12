# Aqui utilizaremos a gem ruby2d para executar o áudio da aplicação, mais informações em: https://rubygems.org/gems/ruby2d
require 'ruby2d'

# Aqui criamos o objeto do tipo Music passando como parâmetro o path do arquivo
boom = Music.new('bit_rush_arcade_ahri.mp3')

# Setar o atributo loop do objeto Music como true para a música não parar
boom.loop = true

# Iniciar a música
boom.play

=begin
Função responsável por sanitizar o texto recebido por parâmetro, removendo tudo oque encontrar após os caracteres de exclusão, optei por utilizar Regex por ser simples objetivo.
O Regex utilizado possui a seguinte assinatura:
  - ([#{array.join}]) = todos os caracteres excludentes estão contidos neste Array, os valores são mesclados
    e utilizados na lógica do Regex, são contidos dentro de um Character Set que por sua vez está contido
    dentro de um Capturing Group.
  - (.*) = Este segundo Capturing Group contém a lógica para capturar qualquer caractere após a primeira a captura
    do Capturing Group 1
Após a execução do Regex temos o tamanho total da cadeia de caracteres que satisfez a função e acessamos este valor subtraindo o tamanho total da string
ao final removendo os espaços em branco com o método "strip"
=end
def funcao(string, array)
  regex = Regexp.new("([#{array.join}])(.*)")
  string[0..(string =~ regex) - 1].strip
end

=begin
Bloco principal do código, aqui é iniciado um looping com pelo menos uma execução, há um menu simples e apenas para
a condição "Iniciar" temos a execução do programa:
  1) Recebemos a frase digitada pelo usuário
  2) Recebemos os caracteres que devem ser excluidos da frase
  3) Retornamos a frase sanitizada
=end
loop do
  puts('*' * 25)
  puts(['0 = Sair', '1 = Iniciar'])
  puts('*' * 25)
  puts('Digite a opcao desejada:')
  option = gets.chomp
  case option
  when '0' then puts('Encerrando o programa...')
  when '1'
    puts('Digite a frase:')
    texto = gets.chomp
    puts("Texto selecionado: #{texto}",'')
    puts('Digite os caracteres a serem excluidos:')
    caracteres = [gets.chomp]
    puts("Caracteres excluidos: #{caracteres.join}",'')
    puts('Iniciando sanitizacao da frase...')
    puts("Frase sanitizada: #{funcao(texto, caracteres)}")
    puts('Encerrando o programa...')
  else puts('Opcao invalida, encerrando o programa.')
  end
  break
end
