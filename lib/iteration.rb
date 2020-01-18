def join_ingredients(src)
  newarray = []
  rowindex = 0
  while rowindex < src.count do
    newarray << "I love #{src[rowindex][0]} and #{src[rowindex][1]} on my pizza"
    rowindex += 1
  end
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  p newarray
end

def find_greater_pair(src)
  newarray = []
  rowindex = 0
  while rowindex < src.count do
    if src[rowindex][0] > src[rowindex][1]
      newarray << src[rowindex][0] else
      newarray << src[rowindex][1]
  end
  rowindex += 1
  end
  p newarray
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
end

def total_even_pairs(src)
  total = 0
rowindex = 0
while rowindex < src.count do
  if src[rowindex][0] % 2 == 0 && src[rowindex][1] % 2 == 0
    total = total + src[rowindex][0] + src[rowindex][1]
end
    rowindex += 1

  end
  p total
end
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!

