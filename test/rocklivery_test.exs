defmodule RockliveryTest do
  use ExUnit.Case
  doctest Rocklivery

  test "greets the world" do
    assert Rocklivery.hello() == :world
  end
end
