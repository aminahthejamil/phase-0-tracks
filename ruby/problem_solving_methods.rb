#Implement a Simple Search

def search_array(arr, val)

  index = 0
  array_length = arr.length

  while index < array_length
    break if arr[index] == val
    index += 1
  end

  if array_length == index
    return nil
  end

return [index]
end

array = [2, 4, 6, 34, 23, 5, 75]

p search_array(array, 8)


# Calculate Fibonacci numbers
# Except for the zero and the one, each number is the sum of the previous two


def fib(x)
  index = 0


  if x == 0
    array = []
  elsif x == 1
    array = [0]
  elsif x == 2
    array = [0, 1]
  end

  x = x -2
  array = [0, 1]

  while x > index
    num = array[-1] + array[-2]
    array << num

    index += 1
  end
array
end

print fib(10)

#Driver code

if fib(100).last == 218922995834555169026
  puts true
else
  puts false
end

# Sort an Array
=begin
1. I have an array of numbers out of order
2. I want to sort the numbers so that they are in ascending order
3. The first number will be compared with the second number
4. If the first number is greater than the second number, those two numbers are swapped
5. That first number is then compared to the following numbers until it reaches a number that it is less than.
6. Each number is compared to the next iteratively until all numbers are sorted
=end

def bubble_sort(array)
  n = array.length

  loop do
    swapped = false

    (n-1).times do  |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
      break if not swapped
    end
  array
end

a = [2, 4, 1, 6, 8, 11, 33, 21, 2, 5, 12, 8, 1, 3, 6]

p bubble_sort(a)
