defmodule Solution do
  @moduledoc """
   find the number of combinations with
   two inputs n, k
  """
    @doc """
      ## Parameters

        - n: Integer (total elements)
        - k: Integer (elements for combination)

      ## Returns

        - Integer

      ## Examples

        iex > Solution.combination(4,2)
          6

        iex > Solution.combination(5,0)
          1

        iex > Solution.combination(6,3)
          20
    """
    @spec combination(n::Integer, k::Integer) :: Integer
    def combination(n, k) do
       facn = fact(n, 1)
       fack = fact(k, 1)
       rest = fact((n-k), 1)
       _result = div(facn, (rest*fack))
    end

    @spec fact(x::Integer, k::Integer) :: Integer
    defp fact(x, result) when x > 0, do: fact(x-1, result*x)
    defp fact(0, result), do: result
    defp fact(_x, _result),  do: :error
end

{n, _} = IO.gets("")
            |> Integer.parse

{k, _} = IO.gets("")
            |> Integer.parse

Solution.combination(n,k)
  |> IO.puts()
