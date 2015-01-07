class String
  define_method(:beats?) do |player2|
    answer = ""
    if self.eql?("rock").&(player2.eql?("scissors"))
      true
    elsif self.eql?("paper").&(player2.eql?("rock"))
      true
    elsif self.eql?("scissors").&(player2.eql?("paper"))
      true
    elsif self == player2
      "tie"
    else false
    end
  end
end
