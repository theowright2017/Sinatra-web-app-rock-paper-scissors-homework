class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

def winner()
  if (@hand1 == "rock" && @hand2 == "scissors") ||
     (@hand1 == "paper" && @hand2 == "rock") ||
     (@hand1 == "scissors" && @hand2 == "paper")
      return "Hand 1 wins with #{@hand1}"
  elsif (@hand1 == "rock" && @hand2 == "rock") ||
        (@hand1 == "paper" && @hand2 == "paper") ||
        (@hand1 == "scissors" && @hand2 == "scissors")
        return "It is a draw"
  else
    return "Hand 2 wins with #{@hand2}"
  end
end

end




  # def random()
  #   @hand1 = ["rock", "paper", "scissors"].sample
  #   @hand2 = ["rock", "paper", "scissors"].sample
  # if (@hand1 == "rock" && @hand2 == "scissors") ||
  #    (@hand1 == "paper" && @hand2 == "rock") ||
  #    (@hand1 == "scissors" && @hand2 == "paper")
  #     return "Hand 1 wins with #{@hand1}"
  # elsif (@hand1 == "rock" && @hand2 == "rock") ||
  #       (@hand1 == "paper" && @hand2 == "paper") ||
  #       (@hand1 == "scissors" && @hand2 == "scissors")
  #       return "It is a draw"
  # else
  #   return "Hand 2 wins with #{@hand2}"
  # end
  # end
