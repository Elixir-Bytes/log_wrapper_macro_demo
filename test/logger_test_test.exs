defmodule LoggerTestTest do
  use ExUnit.Case
  doctest LoggerTest

  test "greets the world" do
    assert LoggerTest.hello() == :world
  end
end
