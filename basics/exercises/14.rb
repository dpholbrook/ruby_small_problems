contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

fields = [:email, :address, :phone_number]

contacts["Joe Smith"].each do |field, value|
  fields.each do |key|
    hash[key] = contact_data.shift
  end
end

p contacts


# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
#
# contacts = {"Joe Smith" => {}}
#
# fields = [:email, :address, :phone_number]
#
# contacts.each do |name, hash|
#   fields.each do |key|
#     hash[key] = contact_data.shift
#   end
# end
#
# p contacts





# x = 0
# while x < 3
# contacts["Joe Smith"][keys[x]] = contact_data[x]
# x += 1
# end
#
# p contacts
