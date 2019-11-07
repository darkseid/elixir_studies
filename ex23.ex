# This problem was asked by Snapchat.
#
# Given an array of time intervals (start, end) for classroom lectures (possibly overlapping), 
# find the minimum number of rooms required.

# For example, given [[30, 75], [0, 50], [60, 150]], you should return 2.
#   given [[30, 75], [0, 50], [60, 150], [60, 100]], you should return 3
#   given [[30, 75], [0, 50], [60, 150], [80, 100]], you should return 2
#   given [[0, 30], [10, 50], [60, 150]], you should return 2
#
defmodule Ex23 do

    def find_overlappings([], acc) do
        acc
    end
    
    def find_overlappings([head|tail]) do
        result = find_overlappings([head|tail], [])
        IO.inspect result, label: "Result:  "
        length(result)
    end

    def find_overlappings([head|tail], acc) do
        

        does_not_overlaps_with_head = Enum.filter(tail, fn x -> !Ex23.overlaps?(head, x) end)
        classroom_list = [head] ++ does_not_overlaps_with_head


        # IO.inspect  acc, label: "Acc "
        # IO.inspect  head, label: "Head "
        # IO.inspect  tail, label: "tail "
        # IO.inspect  room, label: "Room "
        # IO.puts "--------"

        find_overlappings(tail -- does_not_overlaps_with_head, acc ++ [classroom_list])



    end
    
    def overlaps?([_, end1], [start2, _]) do
        start2 < end1
    end

    def test([h|t]) do
        Enum.map(t, fn x -> overlaps?(h, x) end)
    end

end