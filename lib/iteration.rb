
# Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
#
# Build a new Array that contains strings where each pair of foods is
# inserted into this template:
#
# "I love (inner array element 0) and (inner array element 1) on my pizza""
# As such, there should be a new String for each inner array, or pair

def join_ingredients(array1 = [["pepperoni", "sausage"], ["green olives", "green peppers"], ["onions", "pineapple"]])
  row = 0
  while row < array1.length
#        food = 0
#        element_1 = " "
#        element_2 = " "
#        array1[row][0] = element_1
#        food += 1
#        array1[row][1] = element_2
        array1[row] = "I love #{array1[row][0]} and #{array1[row][1]} on my pizza"
#        array1[row] = "I love #{element_1} and #{element_2} on my pizza"
#        while food < array1[row].length 
#              array1[row][food] = element_1
#              food += 1
#              array1[row][food] = element_2
#              array1[row] = "I love #{element_1} and #{element_2} on my pizza"
#        end
        row += 1
  end
  array1
end




def find_greater_pair(array1 = [[4,8], [39,21], [16,60], [345,234]])
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  row = 0
  while row < array1.length
        array1[row].sort!
        array1[row] = array1[row][-1]
        row += 1
  end
  array1
end

def total_even_pairs(array1 = [[4,8], [39,21], [16,60], [345,234]])
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  sum = 0
  row = 0
  while row < array1.length
        if array1[row][0].even? && array1[row][1].even?
           sum_1 = 0
           sum_1 = array1[row][0] + array1[row][1]
           sum = sum + sum_1
        end
        row += 1
  end
  sum
end


