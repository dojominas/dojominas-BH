defmodule LampadasNoCorredor do
  def lamp(n) do
    create_lamps(n, [])
    |> Enum.with_index
    |> switch_lamps(0, n)
  end

  defp create_lamps(i,list) do
    case i do
      0 -> list
      _ -> create_lamps(i-1, list ++ [:off])   
    end
  end

  defp switch_lamps(list, max, max) do
    list
    |> Enum.map(fn({x, _}) -> x end)
  end

  defp switch_lamps(list, i, max) do
    list 
    |> Enum.map(fn(x) -> switch(x, i) end)
    |> switch_lamps(i+1, max)
  end

  defp switch({status, lamp}, i) when rem(lamp + 1, i + 1) == 0 do
    case status do
       :on -> {:off, lamp}
       :off -> {:on, lamp}
    end
  end

  defp switch(tuple, _) do
    tuple
  end
end
