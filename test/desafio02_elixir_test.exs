defmodule Desafio02ElixirTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the amount of odd numbers on the list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = Desafio02Elixir.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
