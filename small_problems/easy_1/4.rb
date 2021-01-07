vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurences(arr)
  counts = Hash.new(0)

  arr.each do |vehicle|
    counts[vehicle.downcase] = arr.count(vehicle.downcase)
  end

  counts.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

# input: an array of strings
# output: string
#
# rules:
#   - count each occurence of a string
#   - print that string with the count
#   - case sensitive
#
# algorithm:
#   - create hash of occurances
#   - iterate on array
#     - if hash has the key of string then incriment value by 1
#     - else create key of that string
#   - puts hash

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
#
# def count_occurences(arr)
#   hsh = {}
#
#   arr.each do |vehicle|
#     hsh.has_key?(vehicle) ? hsh[vehicle] += 1 : hsh[vehicle] = 1
#   end
#
#   hsh.each do |k,v|
#     puts "#{k} => #{v}"
#   end
# end


count_occurences(vehicles)


# I checked to see if the hash had the vehicle key.
# If it did, I incrimented the value by one.
# If id did not, I created a key.
#
# They initialized a key for each vehicle type and assigned the return
# value of counting how many instances of that vehicle there were.







#================================

# my solution
# def count_occurrences(vehicles)
#   count = {}
#   vehicles.each do |vehicle|
#     if count.has_key?(vehicle)
#       count[vehicle] += 1
#     else
#       count[vehicle] = 1
#     end
#   end
#   count.each { |k, v| puts "#{k} => #{v}" }
# end

# their solution
# def count_occurrences(vehicles)
#   count = {}
#   vehicles.each do |vehicle|
#     count[vehicle] = vehicles.count(vehicle)
#   end
#   count.each do |k, v|
#     puts "#{k} => #{v}"
#   end
# end
#
# count_occurrences(vehicles)







# Algorithm
# - create an empty count hash
# - iterate over vehicles array
# - if count hash has key equal to iterated string
# - add one to that key's value
# - else add iterated string to the count hash as a key
# - and add 1 to that key's value
# - iterate hash
# - output key and value
#
# UTP
# - write method that counts the occurance of each string in the array
# - print each element along side of its count
#
# EX
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
#
# Input
# - array of strings
#
# Output
# - list of strings
#
# Test Cases
# ['car', 'truck', 'car']
#
# car => 2
# truck => 1
#
# Data Structure
# - input is array of strings
# - output is a sring of our count
# - store count values in a hash
#
