=begin

input: array
output: sorted array

rules:
  - sort the array in place (mutate)
  - compare each consecutive element
    - if first is greater, then swap elements
  - iterate on array until no swaps are performed
  - return the sorted array

approach:
  - Iterate on the array, swapping each pair of characters if the first is greater.
  - Keep iterating on the array until no swaps have been performed on the last iteration.
  - Do this by setting swaped variable to false
    - If a swap occurs in the inner loop, change swapped to true
    - Break out of the outer loop only if swaped remains false throught the interation
  - Return the array

algorithm:
  - first = 0
  - second = 1 THESE DIDN"T GO HERE WHICH CAUSED A BUG
  - enter a loop to iterate on the arry multiple times
  - FIRST AND SECOND GO HERE SO THEY CAN BE RESET EACH TIME WE ITERATE THROUGH THE ARRAY AGAIN
  - swapped = false
  - enter a loop to iterate on the array
    - if first > second then swap values
      swapped = true
    - end
    - incriment counters by one
    - when second is array size - 1 break from inner loop

    - go to outer loop
      - swapped is false
      - iterate on chars
      - if swapped then swapped = true
      - if swapped remains false
        - then break out of loop


=end

def bubble_sort!(arr)
  loop do
    swapped = false
    first = 0
    second = 1

    loop do
      if arr[first] > arr[second]
        arr[first], arr[second] = arr[second], arr[first]
        swapped = true
      end
      break if second == arr.size - 1
      first += 1
      second += 1
    end
    
    break if swapped == false
  end

arr
end



# input: array of integers
# output: sorted array of integers
#
# rules:
#   - compare first and second
#     - if first greater than second
#       - exchange
#   - compare second and third
#     - if second greater than third
#       - exchange
#   - continue until you reach last integer
#   - if there were exchanges, go through array again
#   - if not, return the sorted array
#
#   - assume array has two integers
#   - mutate array
# #
# algorithm:
#   - enter loop
#     - initialize sorted variable and assign the integer 0 to it
#     - for each sequential pair in the array
#       - create sub array of the pair
#       - if first is greater than second in sub array
#       - reassign first and second in the original array
#       - increment sorted by 1
#     - return the array if sorted == 0

# [2, 6, 7, 1, 4]
# [2, 6, 1, 7, 4]
# [2, 6, 1, 4, 7]


array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
# p array
# p array == [1, 2, 4, 6, 7]


# def bubble_sort!(arr)
#
#   loop do
#     sorted = 0
#
#     (arr.size - 1).times do |first_element|
#       sub_arr = arr[first_element, 2]
#       if sub_arr.first > sub_arr.last
#         arr[first_element, 2] = [sub_arr.last, sub_arr.first]
#         sorted += 1
#       end
#     end
#     return arr if sorted == 0
#   end
# end
#
#
#
# test cases:
# p array = [5, 3]
# p bubble_sort!(array)
# p array
# p array == [3, 5]
#
# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array
# p array == [1, 2, 4, 6, 7]
#
# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
