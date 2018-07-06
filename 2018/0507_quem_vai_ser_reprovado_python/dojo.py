'''
cheque por extenso
15415,16 -> quinze mil quatrocentos e quinze reais e dezesseis centavos
'''
def le_grupo_de_alunos(qtd_alunos, alunos):
    lista_alunos_final = []
    lista_alunos = alunos.split('\n')
    for aluno in lista_alunos:
        nome, nota = aluno.split(' ')
        lista_alunos_final.append([nome, int(nota)])
    return lista_alunos_final

def retorna_reprovado(alunos):
    menor_nota = 100000
    index = 0
    for k, aluno in enumerate(alunos):
      if aluno[1] < menor_nota:
        menor_nota = aluno[1]
        index = k
      if aluno[1] == menor_nota and alunos[index][0] < aluno[0]:
        menor_nota = aluno[1]
        index = k
    return [index, alunos[index][0]]

def test_le_um_aluno():
    qtd_alunos = 1
    alunos = 'Jose 4'

    resultado = le_grupo_de_alunos(qtd_alunos, alunos)

    assert resultado == [['Jose',4]]

def test_le_dois_alunos():
    qtd_alunos = 2
    alunos = 'Jose 4\nMaria 5'

    resultado = le_grupo_de_alunos(qtd_alunos, alunos)

    assert resultado == [['Jose', 4], ['Maria', 5]]

def test_retorna_reprovado_jose():
    alunos = [['Jose', 4], ['Maria', 5]]
    assert retorna_reprovado(alunos)  == [0, 'Jose']

def test_retorna_reprovado_marcos_tres_alunos():
    alunos = [['Jose', 4], ['Maria', 5], ['Marcos', 3]]
    assert retorna_reprovado(alunos) == [2, 'Marcos']

def test_retorna_reprovado_marcos_quatro_alunos():
    alunos = [['Jose', 4], ['Lucia', 8], ['Maria', 5], ['Marcos', 3]]
    assert retorna_reprovado(alunos) == [3, 'Marcos']

def test_retorna_reprovado_cleison():
    alunos = [['Jose', 4], ['Lucia', 8], ['Maria', 5], ['Marcos', 3], ['Cleison', 1]]
    assert retorna_reprovado(alunos) == [4, 'Cleison']

def test_retorna_reprovado_nota_igual():
    alunos = [['Jose', 4], ['Zebu', 4], ['Maria', 5], ['Marcos', 8], ['Cleison', 4]]
    assert retorna_reprovado(alunos) == [1, 'Zebu']

test_le_um_aluno()
test_le_dois_alunos()
test_retorna_reprovado_jose()
test_retorna_reprovado_marcos_tres_alunos()
test_retorna_reprovado_marcos_quatro_alunos()
test_retorna_reprovado_cleison()
test_retorna_reprovado_nota_igual()
