require 'pry'

class String

  def sentence?
    self.end_with?(".") == true
  end

  def question?
    self.end_with?("?") == true
  end

  def exclamation?
    self.end_with?("!") == true
  end

  def count_sentences
    sentence = self.split(/\?|\.|!/)
    noEmptySentences = sentence.reject { |s| s.empty? }
    binding.pry
    noEmptySentences.size

  end
end
