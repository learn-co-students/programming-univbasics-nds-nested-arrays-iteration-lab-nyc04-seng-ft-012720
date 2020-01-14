def join_ingredients(src)
  new_arr = []
  index_num = 0 
  while index_num < src.length do 
    element_num = 0 
    temp_arr = []
    while element_num < src[index_num].length do
      temp_arr << src[index_num][element_num]
      element_num += 1
    end 
    new_arr << "I love #{temp_arr[0]} and #{temp_arr[1]} on my pizza"
    index_num += 1 
  end 
  return new_arr
end

def find_greater_pair(src)
  new_arr = []
  index_num = 0 
  while index_num < src.length do
    element_num = 0 
    while element_num < src[index_num].length do
      if src[index_num][element_num] < src[index_num][element_num + 1]
        new_arr << src[index_num][element_num + 1]
      else   
        new_arr << src[index_num][element_num]
      end
      element_num += src[index_num].length
    end
    index_num += 1
  end   
  return new_arr
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  sum = 0
  index_num = 0 
  while index_num < src.length do
    element_num = 0 
    temp_arr = 0
    while element_num < src[index_num].length do
      if (src[index_num][element_num] % 2 == 0)
        temp_arr += src[index_num][element_num]
        element_num += 1
      else
        temp_arr = 0
        element_num += src[index_num].length
      end
    end
    sum += temp_arr
    index_num += 1
  end   
  return sum
end
