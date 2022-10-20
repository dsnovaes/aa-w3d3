def exponential_r1(base, power)
    return 1 if power == 0
    base * exponential_r1(base, power-1)
end

# p exp1(2, 4) # 16
# p exp1(3, 20) # ??
# p exp1(5000000, 0) # 1

def exponential_r2(base, power)
    return 1 if power == 0
    return base if power == 1
    if ex.even?
        exponential_r2(base, (power/2)) ** exponential_r2(base, (power/2))
    else
        base * (exponential_r2(base, ((power-1)/2)) ** exponential_r2(base, ((power-1)/2)))
    end
end

# p exp2(2, 4) # 16
# p exp2(3, 20) # ??
# p exp2(5000000, 0) # 1