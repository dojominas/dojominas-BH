from code import *


def test_1_centavo():
    assert cheque_por_extenso(0.01) == "um centavo"


def test_2_centavos():
    assert cheque_por_extenso(0.02) == "dois centavos"


def test_10_reais():
    assert cheque_por_extenso(10.00) == "dez reais"


def test_1_real_e_dez_centavos():
    assert cheque_por_extenso(1.10)	== "1 real e dez centavos"


def test_casas_decimais():
    assert existe_casas_decimais(12) == False


def test_valor_por_extenso():
    assert valor_por_extenso(1) == 'um'
    assert valor_por_extenso(2) == 'dois'
    assert valor_por_extenso(3) == 'tres'
    assert valor_por_extenso(4) == 'quatro'
    assert valor_por_extenso(5) == 'cinco'
    assert valor_por_extenso(6) == 'seis'
    assert valor_por_extenso(7) == 'sete'
    assert valor_por_extenso(8) == 'oito'
    assert valor_por_extenso(9) == 'nove'
    assert valor_por_extenso(10) == 'dez'
    assert valor_por_extenso(11) == 'onze'
    assert valor_por_extenso(12) == 'doze'
    assert valor_por_extenso(13) == 'treze'
    assert valor_por_extenso(14) == 'quatorze'
    assert valor_por_extenso(15) == 'quinze'
    assert valor_por_extenso(16) == 'dezesseis'
    assert valor_por_extenso(17) == 'dezessete'
    assert valor_por_extenso(18) == 'dezoito'
    assert valor_por_extenso(19) == 'dezenove'
    assert valor_por_extenso(20) == 'vinte'


def test_1_real():
    assert cheque_por_extenso(1.00) == "um real"


def test_separa_valores():
    assert separa_valores(17.14) == [17,14]
    assert separa_valores(25.09) == [25,9]
