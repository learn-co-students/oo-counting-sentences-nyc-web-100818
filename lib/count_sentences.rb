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
    new_array = self.split(/\.|\?|\!/)
    new_array.select do |sentence|
      sentence.size > 0
    end.size

  end
end
