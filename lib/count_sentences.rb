# require 'pry'

class String

#String #sentence? returns true if the string that you are calling this method on ends in a period.
#
  def sentence?
    # if self.sentence[-1] == "."
    #   true
    # else
    # end
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end

# binding.pry
