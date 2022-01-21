def merge_sort(arr)
  return arr if arr.length == 1

  left = merge_sort(arr[0..(arr.length / 2).floor - 1])
  right = merge_sort(arr[((arr.length / 2).floor)..-1])
  res = []

  loop do
    mm = [left[0], right[0]].minmax
    res << mm[0]
    right.delete(right[0]) if right[0] == mm[0]
    left.delete(left[0]) if left[0] == mm[0]
    if right.length.zero? 
      left.each { |v| res << v }
      return res
    elsif left.length.zero?
      right.each { |v| res << v }
      return res
    end
  end
end

arr = [1, 5, 2, 4, 3, 6, 7, 9, 10, 8]

p merge_sort(arr)