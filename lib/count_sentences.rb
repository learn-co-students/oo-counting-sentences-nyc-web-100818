class String
  # use self bc we are calling this ON an instance of the String class
  # each instance of a string class is a string
  def sentence?
    self.end_with? "."
  end

  def question?
    self.end_with? "?"
  end

  def exclamation?
    self.end_with? "!"
  end

  def count_sentences # returns the # of sentences in a string
    # split the string by ? ! . to get separate sentences that are now separate strings in an array
    split_sentences = self.split(/[?!.]/) # returns: ["This, well, is a sentence", " This is too", "", " And so is this, I think", " Woo"]
    # need to get rid of the "" since that's not a sentence
      # iterate through split_sentences and delete the ""
      # return the length of the new array of sentences
      # use select to return the sentences we select
    split_sentences.select {|word| word != ""}.length
      # get the length of what is returned since we selected all the sentences except for the ""
  end
end
