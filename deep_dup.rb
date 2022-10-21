def deep_dup(arr)
    result = []
    arr.each { |el| el.instance_of?(Array) ? result << deep_dup(el) : result << el }
    result
end

arrrr = [
    ["nuts", "bolts", "washers"],
    ["capacitors", "resistors", "inductors"]
  ]

p deep_dup(arrrr)