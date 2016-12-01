class CaixaEletronico

  NOTAS = [100, 50, 20, 10]


  def saque(valor)
    @valor = valor
    notas = conta_notas

    if @valor > 0 || notas.empty?
      msg = 'Não temos notas disponíveis para esse valor de saque'
      return msg
    end 

    notas
  end

  def conta_notas
    notas = []
    
    NOTAS.each do |n|
      while @valor >= n
        @valor -= n
        notas << n
      end
    end

    notas
  end

end #fim da classe
