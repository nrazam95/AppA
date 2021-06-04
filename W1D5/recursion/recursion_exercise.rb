#Range

def range(min, max)
    return [] if max <= min
    range(min, max - 1) << max - 1
end

def sum_iter(nums)
    sum = 0
    nums.each { |num| sum += nums}
    sum
end

def sum_rec(nums)
    return 0 if nums.empty?
    nums[0] + sum_rec(nums.drop(1))
end

def exp1(base, power)
    power == 0 ? 1 : base * exp1(base, power - 1)
end

def exp2(base, power)
    return 1 if power == 0

    half = exp2(base, power / 2)

    if power.even?
        half * half
    else
        base * half * half
    end
end







