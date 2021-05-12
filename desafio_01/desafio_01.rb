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

# Armazena o resultado da função em uma váriavel
resultado = funcao('bananas, tomates # e ventiladores', ['#', '!'])

# Imprime o resultado da função na console
puts(resultado)

# Imprime o resultado booleando entre a comparação do resultado obtido versus resultado esperado
puts(resultado == 'bananas, tomates')
