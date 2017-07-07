defmodule PalavrasPrimasTest do
  use ExUnit.Case

  test "c é primo" do
    assert PalavrasPrimas.palavra_prima?("c")
  end

  test "d não é primo" do
  	refute PalavrasPrimas.palavra_prima?("d")
  end

  test "a não é primo" do
  	refute PalavrasPrimas.palavra_prima?("a")
  end
end
