def fibonacci_i(num)
    return [1] if num == 1
    return [1, 1] if num == 2
    sequence = [1, 1]

    (3..num).each do |idx|
        sequence << sequence[-1] + sequence[-2]
    end
    return sequence
end


def fibonacci_r(num)
    return [1] if num == 1
    return [1,1] if num == 2
    sequence = fibonacci_r(num-1)
    sequence << sequence[-1] + sequence[-2]
end