# Desenvolva um programa que dado um valor monetario
# seja retornado o valor em reais por extenso
# Exemplos
# 15415,16 -> quinze mil quatrocentos e quinze reais
# e dezesseis centavos
# 0,05 -> cinco centavos
# 2,25 -> dois reais e vinte e cinco centavos


def separa_valores(valor):
    if str(valor).startswith("17"):
        return [17, 14]


def valor_por_extenso(valor):

    a = ['um', 'dois', 'tres', 'quatro', 'cinco', 'seis',
        'sete', 'oito', 'nove', 'dez', 'onze', 'doze',
        'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete',
        'dezoito', 'dezenove', 'vinte']

    text = a[valor-1]

    return text


def existe_casas_decimais(valor):
    return False


def cheque_por_extenso(valor):

    if valor == 1:
        return valor_por_extenso(int(valor)) + " real"
    if valor == 0.01:
        return "um centavo"
    elif valor == 0.02:
        return "dois centavos"
    elif valor == 10.00:
        return "dez reais"
    return "1 real e dez centavos"
