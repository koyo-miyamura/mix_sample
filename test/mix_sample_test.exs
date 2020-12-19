defmodule MixSampleTest do
  use ExUnit.Case
  doctest MixSample

  test "greets the world" do
    assert MixSample.hello() == :world
  end
end
