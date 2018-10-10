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
    # "This, well, is a sentenc\e.\ This is to\o!\! And so is this, I thin\k?\ Wo\o...\"
      self.split(/\S[.!?]/)
  end
end

binding.pry
# string = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")
