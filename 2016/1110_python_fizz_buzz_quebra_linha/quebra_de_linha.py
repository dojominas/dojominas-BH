# Dada uma quantidade de colunas em uma frase
# o programa tem que quebrar linha sem quebrar
# a palavra
# Exemplo - Data a frase "Um pequeno jabuti xereta"
# e pedirmos para exibir em 12 colunas
# Tem que retornar
# um pequeno
# jabuti
# xereta

def quebra_de_linha(string, colunas):
	if len(string) > colunas:
		substring = string[:colunas]
		position = substring.rindex(' ')
		return string[:position]+'\n' + quebra_de_linha(string[position+1:], colunas)
	
	return string

assert quebra_de_linha('',12) == ''
assert quebra_de_linha('dojo',12) == 'dojo'
assert quebra_de_linha('qualquer',12) == 'qualquer'
assert quebra_de_linha('teste',12) == 'teste'
assert quebra_de_linha('jabuti xereta',12) == 'jabuti\nxereta'
assert quebra_de_linha('jabuti chatiado',12) == 'jabuti\nchatiado'
assert quebra_de_linha('jabuti debiloide',12) == 'jabuti\ndebiloide'
assert quebra_de_linha('jabuti debi', 12) == 'jabuti debi'
assert quebra_de_linha('jabuti debi loide', 12) == 'jabuti debi\nloide'
assert quebra_de_linha('jabuti debi loide carro cachorro', 12) == 'jabuti debi\nloide carro\ncachorro'