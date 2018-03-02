'''
cheque por extenso
15415,16 -> quinze mil quatrocentos e quinze reais e dezesseis centavos
'''

def get_number(number):
    return number.split(",")

def get_full_number(number):
    return "quinze mil quatrocentos e quinze reais e dezesseis centavos"

def get_decimal_number(number):
    number = int(number)
    resultado = ''
    centenas =  ["cem", "duzentos", "trezentos", "quatrocentos", "quinhetos", "seiscentos", "setecentos", "oitocentos", "novecentos"]
    dezenas = ["dez", "vinte","trinta", "quarenta", "cinquenta", "sessenta", "setenta", "oitenta", "noventa"]
    unidades_extenso = ["zero","um","dois","tres","quatro","cinco","seis","sete","oito","nove"]
    
    if (int(number) == 0):
        return ''

    if number < 10:
        return unidades_extenso[int(number)]
    elif number < 100:
        print (int(number) % 10)
        return (dezenas[(int(number)/10)-1] + ' ' + get_decimal_number(int(number) % 10)).strip()
    elif number < 1000:
        return (centenas[(int(number)/100)-1] + ' ' + get_decimal_number(int(number) % 10)).strip()

def test_get_decimal_number():
    assert get_decimal_number('1') == 'um'
    assert get_decimal_number('3') == 'tres'
    assert get_decimal_number('10') == 'dez'
    assert get_decimal_number('20') == 'vinte'
    print get_decimal_number('25')
    assert get_decimal_number('25') == 'vinte cinco'
    assert get_decimal_number('200') == 'duzentos'
    assert get_decimal_number('250') == 'duzentos cinquenta'
    assert get_decimal_number('253') == 'duzentos cinquenta tres'
    assert get_decimal_number('999') == 'novecentos noventa nove'

def test_get_number():
    assert get_number("15415,16") == ["15415", "16"]

def test_get_full_number():
    assert get_full_number("15415,16") == "quinze mil quatrocentos e quinze reais e dezesseis centavos"

test_get_full_number()
test_get_number()
test_get_decimal_number()