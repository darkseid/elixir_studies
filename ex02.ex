# This problem was asked by Uber.
#
# Given an array of integers, return a new array such that each element at index i 
# of the new array is the product of all the numbers in the original array except 
# the one at i.
#
# For example, if our input was [1, 2, 3, 4, 5], the expected output would 
# be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output 
# would be [2, 3, 6].
#

defmodule Ex02 do

  def multiply(list) do
    multiply(list, 1)
  end

  def multiply([h|t], acc) do
    multiply(t, h * acc)
  end

  def multiply([], acc) do
    acc
  end

  def calculate(list) do
    k = multiply(list)
    Enum.map(list, fn x -> div(k, x) end)
  end

end