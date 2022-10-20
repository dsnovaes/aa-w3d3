def deep_dup(arr)
    result = []
    arr.each do |el|
        ele.instance_of?(Array) ? result << deep_dup(el) : result << el
    end
    result
end