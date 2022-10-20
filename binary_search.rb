def bsearch(array,target)

    # base case
    return nil if array.empty?
    midpoint = array.length/2
    return midpoint if array[midpoint] == target

    # recursive step
    left = array[0..midpoint]
    right = array[midpoint+1..-1]

    if target < array[midpoint]
        bsearch(left,target)
    else
        other_bsearch = bsearch(right,target)
        other_bsearch.nil? ? nil : other_bsearch + (midpoint+1)
    end

end

# p bsearch([0,1,3,4,5,7,8,13,16,17,19,23,27,40],19)