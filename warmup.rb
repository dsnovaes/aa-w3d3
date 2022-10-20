def range_recursive(min,max)

    range = []

    # base case
    # i will stop shovelling into the array when i reach max-1
    return range if range.length == max-min

    # recursive step
    # has to call the method range_recursive
    range << min
    min += 1
    range + range_recursive(min,max)


end

# p range_recursive(1,5) # => [1,2,3,4]




# iterative version
def range_iterative(min,max)
    (min...max).map { |i| i }
end