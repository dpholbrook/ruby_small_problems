=begin

input: string
output: string

rules:
  - input string is read in from text file
  - build lists of nouns, verbs, adjectives, and adverbs into program
  - place random words of the correct type into text
  - print result


algorithm:
  - create text file and replace nouns, verbs, adjectives and adverbs with their appropriate keyword
  - initialize story variable to read in string from text file
  - create words hash
    - keys: nouns, verbs, adverbs, adjectives
    - values: arrays of appropriate words
  - split story string into array of words
  - iterate on array of words, transforming keywords to random, corresponding words from hash
  - join transformed array into string
  - print string
  -
  -

=end

words = { nouns: %w(dog cat spider banana coffee cloud boat car river mountain),
          verbs: %w(run swim laugh jump cry exhale sigh ponder fight),
          adverbs: %w(quickly slowly carefully tediously religiously),
          adjectives: %w(blue fuzzy cute cuddely slow plump shy dull)
        }

story = File.read('got.txt')

new_story = story.split.map do |word|
  case word
  when 'noun'      then words[:nouns].sample
  when 'adverb'    then words[:adverbs].sample
  when 'verb'      then words[:verbs].sample
  when 'adjective' then words[:adjectives].sample
  else                  word
  end
end.join(' ')

puts new_story

# LS solution:
  # - iterate on each file
  # - for each line in each file
  #   - print the line formatted with keywords replaced with the corresponding words

# File.open('got2.txt') do |file|
#   file.each do |line|
#     puts format(line, noun:      words[:nouns].sample,
#                        adverb:    words[:adverbs].sample,
#                        verb:      words[:verbs].sample,
#                        adjective: words[:adjectives].sample)
#   end
# end
