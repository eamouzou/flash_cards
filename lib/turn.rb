# 1 need to create turn class
#   1.1 initialize with (string, card)
#   1.2 method that returns the guess
#   1.3 method that returns the card
#   1.4 method that returns a boolean (true or false)
#   1.5 feedback method returns "Correct!" or "Incorrect."

class Turn
  attr_accessor(:string, :card, :answer)

  def initialize (string, card)
    @string = string
    @card = card
    @answer = card.answer #call up the answer???
  end

  def guess #not working: porque?. Fixed it. It was because of 'puts' which returns nil
    #if your want to print it, use print or as it is it will return
    @string #last line of your code will automatically be returned
  end

  def card # not working: porque? Fixed it.
    @card
  end
  def correct?
    if @guess == @card.answer #returned false. the guess prints "Juneau" and so does the answer,
      #but when I run turn.correct? it prints false
      p true
    elsif @guess != @card.answer
      p false
    end
  end

  def feedback
    if correct? == true
      p "Correct!"
    elsif correct? == false
      p "Incorrect."
    end
  end
end
