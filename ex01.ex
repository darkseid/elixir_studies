#
# Given a list of numbers and a number k, return whether any two numbers 
# from the list add up to k.
#
# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
#

defmodule Ex01 do

    def sum_two_numbers([], acc) do
        acc
    end

    def sum_two_numbers([head|tail], acc) do
        result = Enum.map(tail, fn x -> x + head end)
        sum_two_numbers(tail, acc ++ result)
    end

    def calculate(values, k) do
        sum_two_numbers(values, []) 
        |> Enum.filter(fn x -> x == k end)
        |> length > 0
    end

end

#
# How to run
#--------

# Ex01.calculate([10, 15, 3, 7], 17)


