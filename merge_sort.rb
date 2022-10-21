# main method
def merge_sort(array)
    return array if array.length < 2
    mp = array.length / 2 # midpoint
    left = array[0...mp]
    right = array[mp..-1]
    sort_left = merge_sort(left)
    sort_right = merge_sort(right)
    merge(sort_left,sort_right)

end


# helper method
def merge(left_array,right_array)
    merged = []
    until left_array.empty? || right_array.empty?
        if left_array.first < right_array.first
            merged << left_array.shift
        else
            merged << right_array.shift
        end
    end
    merged + left_array + right_array
end

p merge_sort([5,8,3,7,1,0,2,4,9])