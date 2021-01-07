# talk = Proc.new do |name|
#   puts "I am talking to #{name}"
# end
#
# talk.call "Bob"

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being passed into a method!"
end

take_proc(proc)
