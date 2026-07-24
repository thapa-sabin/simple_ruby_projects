def bubble_sort(arr)
  loop do
    swapped = false
    (0..arr.length - 2).each do |i|
      if arr[i + 1] < arr[i]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
    break if swapped == false
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
