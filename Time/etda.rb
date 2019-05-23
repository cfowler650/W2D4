def my_min(arr)
  arr.sort.first # O(n log n) + 1 => O(n log n)
end

def my_min2(arr)
  min = arr.first # O(n)
  arr.each do |num|
    if num < min
      min = num
    end
  end
  min
end

def lcs(arr) #n^2 + n + 1 => n^2
  subs_arr = []
  max_arr = []
  (0...arr.length).each do |start_i|
    (start_i...arr.length).each do |end_i|
      subs_arr << arr[start_i..end_i]
    end
  end
  subs_arr.each do |sub|
    max_arr << sub.sum
  end
  max_arr.max
end

# arr = [5, 3, -7]
# p lcs(arr)

def lcs2(arr)
  largest = 0
  current = 0

  return arr.max if arr.all? { |num| num < 0 }

  arr.each do |num|

    if current < 0
      current = 0 
    end

    current += num

    if current > largest
      largest = current 
    end

  end

  largest
end


# arr = [5, 3, -7]
# p lcs2(arr)