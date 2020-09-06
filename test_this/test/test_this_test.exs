defmodule TestThisTest do
  use ExUnit.Case
  doctest TestThis

  test "greets the world" do
    assert TestThis.hello() == :world
  end
end
