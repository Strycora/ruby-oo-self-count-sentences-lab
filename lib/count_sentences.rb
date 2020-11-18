require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end

  end

  def count_sentences
    counter = 0
    self.split(/[.!?]/).each do |sentence|
      if sentence == ""
        next
      else
      counter += 1
      end
    end
    counter
  end
end