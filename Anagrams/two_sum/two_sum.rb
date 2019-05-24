
def g(arr, target_sum)
  return false if arr.empty?
  num1 = arr.shift
  arr.each do |num2|
    return true if (num1 + num2) == target_sum
  end
  # two_sum(arr.drop(1), target_sum)
end


arr = [0, 1, 5, 7]
g(arr, 6) # => should be true
g(arr, 10) # => should be false
