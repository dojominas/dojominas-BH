defmodule LampadasNoCorredorTest do
  use ExUnit.Case
  import LampadasNoCorredor


  test "0" do
    assert lamp(0) == [] 
  end

  test "1" do
    assert lamp(1) == [:on] 
  end

  test "2" do
    assert lamp(2) == [:on, :off] 
  end

  test "3" do
    assert lamp(3) == [:on, :off, :off] 
  end

  test "4" do
    assert lamp(4) == [:on, :off, :off, :on] 
  end

  test "5" do
    assert lamp(5) == [:on, :off, :off, :on, :off] 
  end
end
