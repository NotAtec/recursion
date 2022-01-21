def merge_sort(arr)
  return arr if arr.length == 1

  # Sort Left half
  left = merge_sort(arr[0..(arr.length / 2).floor - 1])
  
  # Sort right half
  right = merge_sort(arr[((arr.length / 2).floor)..-1])
  # Merge halves

end

arr = [1, 5, 2, 4, 3, 6, 7, 9, 10, 8]

p merge_sort(arr)