#
# Given a list of numbers and a number k, return whether any two numbers 
# from the list add up to k.
#
# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
#

defmodule Exercise01 do

    def sum_two_numbers([head|tail]) do
        result = Enum.map(tail, fn x -> x + head end)
        Enum.concat(result, sum_two_numbers(tail))
    end

    def sum_two_numbers([]) do
        []
    end

    def calculate(values, k) do
        sum_two_numbers(values) 
        |> Enum.filter(fn x -> x == k end)
        |> length > 0
    end

end

#
# How to run
#--------

# Exercise01.calculate([10, 15, 3, 7], 17)


