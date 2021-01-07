=begin
We see that the output for the search term 'cat' is completely wrong so we start
there, by commenting out all of the method calls except for the ones involving
cat. To further simplify, we only examine the first call of tfidf examining the
score for cat in document 1.

Upon outputting the idf score for 'cat', we see that it is returning
0 which can not be correct because we know that 'cat' should exist in documents
1 and 2.

Examining the idf method we see that the code looks good but that the last
expression evaluated which is returning 0 when it should return a number >
0 is using division to come up with that return value. We know from experience
that when integers are divided, you can wind up with 0 instead of the decimal
that you want. So, we convert the numerator and denominator to floats.

We then uncomment out all of the calls to the method and see that
although we have the return values that we want, we have some floats as return
values that have far more digits than we want. We can solve this by rounding
the return value of the method call to tfidf to 1 decimal place.

FEX
When we remove document 1 and and call the tfidf method, passing in 'quantum'
and document 2 as parameters, we see that the return value of calling
idf is infinity. By playing around in irb, we see that 2/0 would return a zero
division error. But, 2.0/0.0 returns infinity. We are dividing by 0 here
because quantum does not exist in any of the documents. We know that if this is
the case, the return value of tfidf should be 0. So we can tell idf to simply
return 0 if it does not find any instances of the search term in any of the
documents. This will make tfidf return the 0 value that we want in this case.



=end



# Term frequency - inverse document frequency:
# A measure of how important a term is to a document in a collection of documents
# (the importance increases proportionally to the term frequency in the document,
# but decreases with the frequency of the word across documents)

def tfidf(term, document, documents)
  tf(term, document)
  idf(term, documents)
  (tf(term, document) * idf(term, documents)).round(1)
end

# Term frequency (simple version):
# the number of times a term occurs in a document

def tf(term, document)
  document.split(/[\s-]/).count { |word| word.downcase == term }
end

# Inverse document frequency:
# measure of how much information the word provides,
# based on the number of documents in which it occurs
# (the rarer it is, the more information it provides)

def idf(term, documents)
  number_of_documents = documents.length
  number_of_documents_with_term = documents.count { |d| tf(term, d) > 0 }
  return 0 if number_of_documents_with_term == 0

  Math.log(number_of_documents.to_f / number_of_documents_with_term.to_f)
end

# Very simple example

document1 = "Schrödinger's cat is a thought experiment often featured in discussions of the interpretation of quantum mechanics. The Austrian physicist Erwin Schrödinger devised " +
"it in 1935 as an argument against the Copenhagen interpretation of quantum mechanics, which states that an object in a physical system can simultaneously exist in all possible configurations, " +
"a state called quantum superposition, and only observing the system forces the object into just one of those possible states. Schrödinger disagreed with this interpretation. In particular, " +
"quantum superposition could not work with larger objects. As an illustration, he presented a scenario with a cat in a sealed box, whose fate was linked to a subatomic event that may or may not occur. " +
"In a quantum superposed state of the subatomic particles, the cat would be both alive and dead, until someone opened the box and observed it."

document2 = "The domestic cat is a small, furry, carnivorous mammal. The term cat can, however, also refer to wild cats, which include animals like lions, tigers and leopards. " +
"Cats are claimed to have a lower social IQ than dogs but can solve more difficult cognitive problems and have a longer-term memory. International Cat Day is celebrated on August 8. " +
"Famous cats include Schrödinger's cat as well as Pudding and Butterscotch, which occur in some of the Launch School assignments."

document3 = "One of the core values that sets Launch School apart from some other coding schools out there is our emphasis on Mastery-based Learning. If the key to becoming a competent and confident Software Engineer " +
"is deep understanding of first principles, then the key to acquiring that understanding is through Mastery-based Learning. The core of Mastery-based Learning is replacing time with mastery. There's no graduation, " +
"but a continual learning journey of micro-improvements. At Launch School, we're not trying to catch a wave or take advantage of a surge in demand. Instead, we're trying to focus on things that'll be useful to you for decades to come, " +
"such as a systematic problem-solving approach or learning how to deconstruct a programming language or building sound mental representations of how web application work. Everything we're trying to do at " +
"Launch School is with an eye towards sustainable studying habits and building skills for a long-term career."

documents = [document1, document2, document3]

# The higher the tf-idf score of a term for a document, the more informative
# it is for that document.
# E.g. when someone searches for the term 'cat' in your document collection,
# you want to return document1 and document2, but not document3.
# For the term 'quantum mechanics', on the other hand, you only want to return document1.

# expected outputs:
puts "cat"
puts tfidf("cat", document1, documents) # ~ 1.2
puts tfidf("cat", document2, documents) # ~ 1.6
puts tfidf("cat", document3, documents) # 0

puts "quantum"
puts tfidf("quantum", document1, documents) # ~ 5.5
puts tfidf("quantum", document2, documents) # 0
puts tfidf("quantum", document3, documents) # 0

puts "mastery"
puts tfidf("mastery", document1, documents) # 0
puts tfidf("mastery", document2, documents) # 0
puts tfidf("mastery", document3, documents) # ~ 3.3

puts "some"
puts tfidf("some", document1, documents) # 0
puts tfidf("some", document2, documents) # ~ 0.4
puts tfidf("some", document3, documents) # ~ 0.4
