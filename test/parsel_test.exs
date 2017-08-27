defmodule ParselTest do
  use ExUnit.Case
  doctest Parsel

  test "greets the world" do
    assert Parsel.hello() == :world
  end
end
