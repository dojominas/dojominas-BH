defmodule DependenciasTransitivasTest do
  use ExUnit.Case
  import DependenciasTransitivas

  test "Dependencia unica" do
  	classes = %{a: [:b, :c]}
  	assert depend(classes) == [classes]
  end

  test "Dependencia simples 2" do
  	classes = %{a: [:b, :c], d: [:e, :f]}
  	assert depend(classes) == [%{a: [:b, :c]}, %{d: [:e, :f]}]
  end

  test "Dependencia dupla" do
  	classes = %{a: [:b, :c], b: [:c, :e]}
  	assert depend(classes) == [%{a: [:b, :c, :e]}, %{b: [:c, :e]}]
  end

  # test "" do
  # 	classes = %{a: [:b, :c], b: [:c, :e], c: [:g], d: [:a, :f], e: [:f], f: [:h] } 
  # end
end
