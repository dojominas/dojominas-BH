defmodule PalavrasPrimas do
  def palavra_prima?(palavra) do
    num = palavra
          |> String.to_charlist
          |> List.first
    
    mapa[num]
  end

  defp map_minusculo do
    ?a..?z 
    |> Enum.map(fn(letra) -> {letra, letra - 96} end)
    |> Enum.into(%{})
  end

  defp map_maiusculo do
    ?A..?Z  
    |> Enum.map(fn(letra) -> {letra, letra - 38} end)
    |> Enum.into(%{})
  end

  defp mapa do
    Map.merge(map_maiusculo, map_minusculo)
  end 
end