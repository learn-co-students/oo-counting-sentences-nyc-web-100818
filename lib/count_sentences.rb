require 'pry'

class String

  #return true if string ends with "."
  def sentence?
    self.end_with?(".")
  end

  #return false if string ends with "!"
  def question?
    self.end_with?("?")
  end

  #return true if string#question? end in "?"
  def exclamation?
    self.end_with?("!")
  end

  #counts number of sentences in String
  #return 0 is none in string
  #return # of sentences in comple string
  def count_sentences
    #set up counter to count # of sentences
    sentence_count = 0
    #split sentence => array elements
    #separate words at each space = eliminate empty string
    #"Hi! I'm so hangry..." => ["Hi!", "I'm", "so", "hangry..."]
    split_sentence = self.split(" ")
      #go over the array, each 'word'
      split_sentence.each do |word|
        #use our predicate methods to check if a word ends with "." or "?" or "!"
        if word.question? || word.sentence? || word.exclamation?
          #if a word ends with one of those characters- represents end of 1 sentence
          #still accounts for cases where multiple '!!' or  '...'
          sentence_count += 1
          #so every word that ends in one of those characters = 1 sentence
          #we use a counter here to collect the number of words in the string meet these conditions!
        end
      end
      return sentence_count
    end
end
