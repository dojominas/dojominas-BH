defmodule DojoElixir do
  def numeros_repetidos(n, m) do

    Enum.reduce(gerar_range(n,m), 0, fn (attachment, processed) ->
      if(numero_valido(attachment)) do
        processed + 1
      else
        processed
      end

    end)
  end

  def numero_valido(numero) do
    primeiro_digito = String.slice(numero, 0..0)
    resto = String.slice(numero, 1..-1)
    !(resto =~ primeiro_digito)
  end

  def gerar_range(n, m) do
    for i <- n..m, do: Integer.to_string(i)
  end
end
