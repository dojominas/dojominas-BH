defmodule DojoElixirTest do
  use ExUnit.Case
  doctest DojoElixir

  test "numeros repetidos 1234 1234" do
    assert DojoElixir.numeros_repetidos(1234, 1234) == 1
  end

  test "numeros repetidos 22 22" do
    assert DojoElixir.numeros_repetidos(22, 22) == 0
  end

  test "numeros repetidos 989 990" do
    assert DojoElixir.numeros_repetidos(989, 990) == 0
  end

  test "numeros repetidos 22 25" do
    assert DojoElixir.numeros_repetidos(22, 25) == 3
  end

  test "gerar range 989 990" do
    assert DojoElixir.gerar_range(989, 990) == ["989","990"]
  end

  test "gerar range 989 991" do
    assert DojoElixir.gerar_range(989, 991) == ["989","990","991"]
  end

  test "gerar range 2 22" do
    assert DojoElixir.gerar_range(22, 22) == ["22"]
  end
end
