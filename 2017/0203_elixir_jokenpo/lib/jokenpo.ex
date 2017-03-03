defmodule Jokenpo do

  def jogar([:pedra, jogada]) do
    case jogada do
        :tesoura -> :pedra
        :papel -> :papel
        :pedra -> :empate
        _ -> :erro
    end
  end

  def jogar([:papel, jogada]) do
    case jogada do
        :tesoura -> :tesoura
        :pedra -> :papel
        :papel -> :empate
        _ -> :erro
    end
  end

  def jogar([:tesoura, jogada]) do
    case jogada do
        :papel -> :tesoura
        :pedra -> :pedra
        :tesoura -> :empate
        _ -> :erro
    end
  end

  def jogar([jogada1, jogada2]) do
    :erro
  end
end
