require 'minitest/autorun'
require_relative '../lib/caixa_eletronico'

class TestCaixaEletronico < Minitest::Test
  # Alguma configuração de setup
  def setup
    @msg = 'Não temos notas disponíveis para esse valor de saque'
  end

  def test_if_class_exist
    assert_instance_of CaixaEletronico, CaixaEletronico.new
  end

  def test_zero
    assert_equal @msg, CaixaEletronico.new.saque(0)
  end

  def test_less_than_10
    assert_equal @msg, CaixaEletronico.new.saque(9)
  end

  def test_10
    assert_equal [10], CaixaEletronico.new.saque(10)
  end

  def test_20
    assert_equal [20], CaixaEletronico.new.saque(20)
  end

  def test_30
    assert_equal [20, 10], CaixaEletronico.new.saque(30)
  end

  def test_50
    assert_equal [50], CaixaEletronico.new.saque(50)
  end

  def test_80
    assert_equal [50, 20, 10], CaixaEletronico.new.saque(80)
  end

  def test_500
    assert_equal [100, 100, 100, 100, 100], CaixaEletronico.new.saque(500)
  end
  def test_580
    assert_equal [100, 100, 100, 100, 100, 50, 20, 10], CaixaEletronico.new.saque(580)
  end

  def test_85
    assert_equal @msg, CaixaEletronico.new.saque(85)
  end
end






# Desenvolva um programa que simule a entrega de notas quando
# um cliente efetuar um saque em um caixa eletrônico. 
# Os requisitos básicos são os seguintes:

# - Entregar o menor número de notas;
# - É possível sacar o valor solicitado com as notas disponíveis;
# - Saldo do cliente infinito;
# - Quantidade de notas infinito (pode-se colocar um valor 
#   finito de cédulas para aumentar a dificuldade do problema);

# Notas disponíveis de R$ 100,00; R$ 50,00; R$ 20,00 e R$ 10,00

# Exemplos:
# Valor do Saque: R$ 30,00 – Resultado Esperado: 
#   Entregar 1 nota de R$20,00 e 1 nota de R$ 10,00.
# Valor do Saque: R$ 80,00 – Resultado Esperado: 
#   Entregar 1 nota de R$50,00 1 nota de R$ 20,00 e 
#   1 nota de R$ 10,00.
