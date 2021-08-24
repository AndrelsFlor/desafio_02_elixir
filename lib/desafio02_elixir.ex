defmodule Desafio02Elixir do
  def call(list) do
    remove_not_numbers(list)
  end

  defp remove_not_numbers([_ | _] = list) do
    numeric_list = Enum.filter(list, fn x -> filter_lambda(x) end)
    parsed_list = parse_list(numeric_list)
    odd_count(parsed_list, 0)
  end

  defp remove_not_numbers([]) do
    0
  end

  defp filter_lambda(element) do
    to_boolean(Float.parse(element))
  end

  defp to_boolean(:error), do: false

  defp to_boolean({_, _}), do: true

  defp parse_list(numeric_list) do
    parsed_list = Enum.map(numeric_list, fn x -> return_only_number(Integer.parse(x)) end)
    parsed_list
  end

  defp return_only_number({number, _}), do: number

  defp odd_count([], acc), do: acc

  defp odd_count([head | tail], acc) do
    acc =
      if rem(head, 2) != 0 do
        acc + 1
      else
        acc
      end

    odd_count(tail, acc)
  end
end
