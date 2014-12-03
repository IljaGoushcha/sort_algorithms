require 'pry'

class Array

  def bubble_sort
    counter = 0 # may not need this line
    while self.verify_if_ordered == false do

      index1 = 0
      index2 = index1 + 1
      while index1 < (self.length - 1) do

        temp_array = compare_two(self[index1], self[index2])
        self[index1] = temp_array[0]
        self[index2] = temp_array[1]

        index1 += 1
        index2 += 1
      end
      counter +=1
    end

    return self
  end

  def compare_two(elem1, elem2)
    if elem1 > elem2
      return [elem2, elem1]
    else
      return [elem1, elem2]
    end
  end

  def verify_if_ordered
    index1 = 0
    index2 = index1 + 1
    while index1 < (self.length - 1) do
      if (self[index1] < self[index2] || self[index1] == self[index2])
      else
        return false
      end
      index1 += 1
      index2 += 1
    end

    return true
  end

  def selection_sort
    counter = 0

    while counter < self.length
      smallest_number = self.get_smallest_number_and_index(counter)[0]
      smallest_number_index = self.get_smallest_number_and_index(counter)[1] + counter

      self.insert(counter, smallest_number)
      self.delete_at(smallest_number_index + 1)
      counter += 1
    end
    return self
  end

  def get_smallest_number_and_index(starting_index)
    index = starting_index
    adjusted_index = 0
    smallest_number = self[starting_index]
    smallest_number_index = 0
    while index < (self.length) do
      if self[index] < smallest_number
        smallest_number = self[index]
        smallest_number_index = adjusted_index
      end
      index += 1
      adjusted_index += 1
    end

    return [smallest_number, smallest_number_index]
  end

end

my_array = [1, 1, 3, 5, 4, 7, 13, 2, 9, 7, 5, 4, 7, 13, 100, 33, 45]

my_array.bubble_sort

# my_array.selection_sort













