defmodule TenisGame do
  def game([40, 40], player) do
    case player do
      1 -> [:ad, 40]
      _ -> [40, :ad]
    end
  end

  def game(list, player) do
    p1 = List.first(list)
    p2 = List.last(list)

    case player do
       1 -> [game(p1), p2]
       2 -> [p1, game(p2)] 
    end
  end

  def game(ponto) do
    case ponto do
      30 -> ponto + 10
      40 -> :win
      :ad -> :win
      _ -> ponto + 15 
    end
  end
end