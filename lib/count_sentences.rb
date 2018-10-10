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

  def count_sentences
    sentence_count = 0

    split_sentence = self.split(" ")
      split_sentence.each do |word|

        if word.question? || word.sentence? || word.exclamation?

          sentence_count += 1
        end
      end
      sentence_count
  end

end
