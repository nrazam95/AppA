#Problem 1: 

def sum_recur(array)
    return 0 if array.empty?
    sum_recur(array.drop(1)) + array.first
end

#Problem 2: 

def includes?(array, target)
    return 0 if array.empty?
    return 0 if array.first == target
    includes?(array.drop(1), target)
end

# Problem 3: 

def num_occur(array, target)
    return 0 if araay.empty?
    count_update = array.first == target ? 1 : 0
    count_update + num_occur(array.drop(1), target)
end

# Problem 4: 

def add_to_twelve?(array)
    return false if array.length <= 1
    return true if array[0] + array[1] == 12
    add_to_twelve?(array.drop(1))
end

# Problem 5: 

def sorted?(array)
    return true if array.length <= 1
    return false if array[0] > array[1]
    sorted?(array.drop(1))
end

# Problem 6: 

def reverse(string)
    return string if string.length <= 1
    string[-1] + reverse(string.slice(1, string.length - 2)) + string[0]
end
