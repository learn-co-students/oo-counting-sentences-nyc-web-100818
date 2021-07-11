require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  # def count_sentences
  #   counter = 0
  #   # set a counter variable to count the sentences
  #   split_sentence = self.split(" ")
  #   # split self and save it to a variable. Can this be done without saving to a sepearate variable
  #   split_sentence.each do |word|
  #     if word.question?||word.sentence?||word.exclamation?
  #       counter += 1
  #     end
  #   end
  #   counter
  # end

  def count_sentences
    counter = 0
    self.split(" ").each do |word|
      if word.question? || word.sentence? || word.exclamation?
        counter +=1
      end
    end
  counter
  end
end
