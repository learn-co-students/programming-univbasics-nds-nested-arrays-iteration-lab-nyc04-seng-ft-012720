def join_ingredients(src)
  outer_arr = []
  row_index = 0 
  while row_index < src.length do
    element_index = 0 
    inner_arr = []
    while element_index <= 1 do
      inner_arr << src[row_index][element_index]
      element_index += 1
    end
    row_index += 1 
    outer_arr << "I love #{inner_arr[0]} and #{inner_arr[1]} on my pizza"
  end 
  
  outer_arr
end

def find_greater_pair(src)
row_index = 0 
  outer_arr = []
  
  while row_index < src.count do
    element_index = 0
    inner_arr = []
    while element_index < src[row_index].count do
      inner_arr << src[row_index][element_index]
      end   
    if inner_arr[0] < inner_arr[1]
      inner_arr.shift
    else
      inner_arr.pop
    end 
    row_index += 1 
    outer_arr << inner_arr
  end
  outer_arr

end


def total_even_pairs(src)
  outer_arr = []
  row_index = 0 
  while row_index < src.length
    element_index = 0 
    inner_arr = []
    while element_index < src[row_index].length
      inner_arr << src[row_index][element_index]
    end
  if (inner_arr[0] % 2 == 0) && (inner_arr[1] % 2 == 0)
    outer_arr << inner_arr
  end
  row_index += 1 
  end
  
  outer_arr
end
