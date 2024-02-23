defmodule BottlesTest do
  use ExUnit.Case
  doctest Bottles

  test "greets the world" do
    assert Bottles.hello() == :world
  end
end
