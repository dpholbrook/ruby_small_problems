arr = ["b", "a"]
arr = arr.product(Array(1..3)) #[1, 2, 3]
p arr.first.delete(arr.first.last)

# you are calling delete on the first element of arr
# you pass in the argument arr.first.last which is 1
# without arr.first and just arr.delete you would be calling delete on the whole array
# and it seems that you can't pass in the argument arr.first.last
# because arr.first wasn't defined as the object so the method cant access that arr.first element

#[["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
#["b", 1]

#returns 1

#arr.delete(arr.first.last) would delete 1

#i dont understand how arr.first fits in




arr = ["b", "a"]
arr = arr.product([Array(1..3)])
p arr.first.delete(arr.first.last)
#[[1, 2, 3]]
#[["b", [1, 2, 3]], ["a", [1, 2, 3]]

#arr.delete(arr.first.last) would delete and return 3



#["b", 1, 2, 3]
