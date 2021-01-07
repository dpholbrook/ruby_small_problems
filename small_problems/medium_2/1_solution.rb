text = File.read('pg84.txt')

sentences = text.split(/\.|\?|!/)
longest_sentence = sentences.max_by { |sentence| sentence.split.size }
word_count = longest_sentence.split.size

puts "The longest sentence is #{longest_sentence}."
puts "That long sentence has #{word_count} words."
