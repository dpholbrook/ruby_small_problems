a = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

a.each do |string|
  if /lab/ =~ string
    puts "#{string} has 'lab' in it."
  end
end
