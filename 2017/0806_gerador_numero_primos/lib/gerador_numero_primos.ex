defmodule GeradorNumeroPrimos do
  def lista(initial, final) do
    Enum.to_list initial..final
      |> Enum.filter( fn(n) -> primo(n, n - 1) end)
  end

  defp primo(_, 1) do
    true
  end

  defp primo(numero, divisor) do
    if numero <= 1 || Integer.mod(numero, divisor) == 0 do
      false
    else
      primo(numero, divisor-1)
    end
  end
end
