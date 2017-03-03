defmodule JokenpoTest do
  use ExUnit.Case
  doctest Jokenpo

  test "pedra e pedra da empate" do
    assert Jokenpo.jogar([:pedra, :pedra]) == :empate
  end

  test "pedra e tesoura a pedra ganha" do
  	assert Jokenpo.jogar([:pedra, :tesoura]) == :pedra
  end

  test "pedra e papel a pedra perde" do
  	assert Jokenpo.jogar([:pedra, :papel]) == :papel
  end

  test "teste do empate" do
  	assert Jokenpo.jogar([:papel, :papel]) == :empate
  end
  
  test "papel ganha de pedra" do
  	assert Jokenpo.jogar([:papel, :pedra]) == :papel
  end

  test "papel perde de tesoura" do
  	assert Jokenpo.jogar([:papel, :tesoura]) == :tesoura
  end
  
  test "tesoura empata com tesoura" do
  	assert Jokenpo.jogar([:tesoura, :tesoura]) == :empate	
  end

  test "tesoura ganha de papel" do
  	assert Jokenpo.jogar([:tesoura, :papel]) == :tesoura	
  end

  test "tesoura perde de pedra" do
  	assert Jokenpo.jogar([:tesoura, :pedra]) == :pedra	
  end

  test "qualquer erro" do
  	assert Jokenpo.jogar([:aaaa, :aaaa]) == :erro
  	assert Jokenpo.jogar([:aaaa, :ba]) == :erro	
  	assert Jokenpo.jogar([:tesoura, :ba]) == :erro	
  end

  test "primeiro errado" do
  	assert Jokenpo.jogar([:aaaa, :papel]) == :erro	
  end  
end
