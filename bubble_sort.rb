def bubble_sort(arr_num)
  0.upto(arr_num.length - 3) do |_i|
    0.upto(arr_num.length - 2) do |idx|
      next unless arr_num[idx] > arr_num[idx + 1]

      temp = arr_num[idx]
      arr_num[idx] = arr_num[idx + 1]
      arr_num[idx + 1] = temp
    end
  end
  arr_num
end

p bubble_sort([4, 3, 78, 2, 0, 2, 20, 24, 35, 76, 18, 27, 17, 16, 13])
