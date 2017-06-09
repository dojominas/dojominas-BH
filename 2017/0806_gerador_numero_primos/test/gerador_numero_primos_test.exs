defmodule GeradorNumeroPrimosTest do
  use ExUnit.Case
  doctest GeradorNumeroPrimos

  test "retorna 2 quando o primeiro for 2 e o último 2" do
    assert GeradorNumeroPrimos.lista(2, 2) == [2]
  end

  test "retorna 2 e 3 quando o primeiro for 2, e o último 3" do
    assert GeradorNumeroPrimos.lista(2, 3) == [2, 3]
  end

  test "retorna 2 e 3 e 5 quando passar (2, 5)" do
  	assert GeradorNumeroPrimos.lista(2, 5) == [2, 3, 5]
  end

  test "retorna 2, 3, 5, 7, 11 quando passar (2, 11)" do
  	assert GeradorNumeroPrimos.lista(2, 11) == [2, 3, 5, 7, 11]
  end

  test "retorna 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31 quando passar (2, 31)" do
  	assert GeradorNumeroPrimos.lista(2, 31) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
  end

  test "retorna 2,3,5,7 quando passar (1, 10)" do
  	assert GeradorNumeroPrimos.lista(1, 10) == [2, 3, 5, 7]
  end
  
  test "retorna 2,3,5,7 quando passar (-10, 10)" do
  	assert GeradorNumeroPrimos.lista(-10, 10) == [2, 3, 5, 7]
  end

end
