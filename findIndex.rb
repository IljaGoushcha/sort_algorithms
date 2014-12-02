my_array = [1, 3, 4, 7, 10, 14, 16, 18, 22, 29, 37, 100, 111, 200]

$counter = 0

def findIndex(array, num)

  array_length = array.length

  center_index = (array_length/2).round
  puts "center_index is: #{center_index} value at center index: #{array[center_index]}"
  if array[center_index] < num
    new_array = array[center_index..array_length]
    puts new_array
    findIndex(new_array, num)
    $counter = $counter + center_index
  elsif array[center_index] == num
    return num
  else array[center_index] > num
    new_array = array[0..center_index]
    puts new_array
    findIndex(new_array, num)
  end
end

def findIndex1(array, num, center_index)
  puts "center index is: #{center_index}, value at center index: #{array[center_index]}, looking for: #{num}"
  if array[center_index] > num
    center_index = (center_index/2).round
    puts "*** #{center_index}"
    findIndex1(array, num, center_index)
  elsif array[center_index] == num
    return num
  else array[center_index] < num
    center_index = (center_index*1.5).round
    puts "*** #{center_index}"
    findIndex1(array, num, center_index)
  end
end

def findIndex2(array, num, left_index, right_index )

  center_index = (right_index - left_index)/2
  num_at_center_index = array[center_index]

  puts "center index is: #{center_index}, value at center index: #{array[center_index]}, looking for: #{num}"
  puts "*** #{left_index} *** #{right_index} ***"

  puts "continue?"
  gets.chomp

  if num_at_center_index > num
    right_index = center_index
    puts "moving right index"
    findIndex2(array, num, left_index, right_index)
  elsif array[center_index] == num
    return num
  else num_at_center_index < num
    left_index = center_index
    puts "moving left index"
    findIndex2(array, num, left_index, right_index)
  end

end


# puts findIndex(my_array, 16)
puts findIndex2(my_array, 22, 0, 13)






















