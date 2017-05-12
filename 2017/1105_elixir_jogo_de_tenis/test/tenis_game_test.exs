defmodule TenisGameTest do
  use ExUnit.Case
  
  test "[0, 0], Player 1 pontua" do
    assert TenisGame.game([0, 0], 1) == [15, 0]
  end

  test "[15, 0], Player 1 pontua" do
    assert TenisGame.game([15, 0], 1) == [30, 0]
  end

  test "[30, 0], Player 1 pontua" do
    assert TenisGame.game([30, 0], 1) == [40, 0]
  end

  test "[40, 0], Player 1 pontua" do
    assert TenisGame.game([40, 0], 1) == [:win, 0]
  end

  test "[0, 0], Player 2 pontua" do
    assert TenisGame.game([0, 0], 2) == [0, 15]
  end

  test "[0, 15], Player 2 pontua" do
    assert TenisGame.game([0, 15], 2) == [0, 30]
  end

  test "[0, 30], Player 2 pontua" do
    assert TenisGame.game([0, 30], 2) == [0, 40]
  end

  test "[0, 40], Player 2 pontua" do
    assert TenisGame.game([0, 40], 2) == [0, :win]
  end
 
  test "[15, 15], Player 2 pontua" do
    assert TenisGame.game([15, 15], 2) == [15, 30]
  end

  test "[15, 15], Player 1 pontua" do
    assert TenisGame.game([15, 15], 1) == [30, 15]
  end

 test "[30, 30], Player 2 pontua" do
    assert TenisGame.game([30, 30], 2) == [30, 40]
  end
 
  test "[30, 30], Player 1 pontua" do
    assert TenisGame.game([30, 30], 1) == [40, 30]
  end

  test "[40, 40], Player 1 pontua" do
    assert TenisGame.game([40, 40], 1) == [:ad, 40]
  end

  test "[40, 40], Player 2 pontua" do
    assert TenisGame.game([40, 40], 2) == [40, :ad]
  end

  test "[:ad, 40], Player 1 pontua" do
    assert TenisGame.game([:ad, 40], 1) == [:win, 40]
  end

  test "[40, :ad], Player 2 pontua" do
    assert TenisGame.game([40, :ad], 2) == [40, :win]
  end




end
