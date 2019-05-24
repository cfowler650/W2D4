def bad_two_sum?(arr, target_sum) # time complexity = O(n^2)

  (0...arr.length).each do |idx_1|
    (idx_1 + 1...arr.length).each do |idx_2|
      return true if arr[idx_1] + arr[idx_2] == target_sum
    end
  end

  false
end 

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


def two_sum?(arr, target_sum) # O(log n)
  return false if arr.empty?

  num1 = arr.first

  arr.drop(1).each do |num2|
    return true if num1 + num2 == target_sum
  end
  two_sum?(arr.drop(1), target_sum)
end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false