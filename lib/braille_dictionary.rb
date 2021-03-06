module BrailleDictionary
  # attr_reader :character
  #             # :a,:b,:c,:d,:e,:f,:g,:h,:i,:j,:k,:l,:m,
  #             # :n,:o,:p,:q,:r,:s,:t,:u,:v,:w,:x,:y,:z
  # def initialize(character)
  #   @character = character
  # end
  def character_to_braille
    if @letter_to_be_translated == "a"
      [["0."],[".."],[".."]]
    elsif @letter_to_be_translated == "b"
      [["0."],["0."],[".."]]
    elsif @letter_to_be_translated == "c"
      [["00"],[".."],[".."]]
    elsif @letter_to_be_translated == "d"
      [["00"],[".0"],[".."]]
    elsif @letter_to_be_translated == "e"
      [["0."],[".0"],[".."]]
    elsif @letter_to_be_translated == "f"
      [["00"],["0."],[".."]]
    elsif @letter_to_be_translated == "g"
      [["00"],["00"],[".."]]
    elsif @letter_to_be_translated == "h"
      [["0."],["00"],[".."]]
    elsif @letter_to_be_translated == "i"
      [[".0"],["0."],[".."]]
    elsif @letter_to_be_translated == "j"
      [[".0"],["00"],[".."]]
    elsif @letter_to_be_translated == "k"
      [["0."],[".."],["0."]]
    elsif @letter_to_be_translated == "l"
      [["0."],["0."],["0."]]
    elsif @letter_to_be_translated == "m"
      [["00"],[".."],["0."]]
    elsif @letter_to_be_translated == "n"
      [["00"],[".0"],["0."]]
    elsif @letter_to_be_translated == "o"
      [["0."],[".0"],["0."]]
    elsif @letter_to_be_translated == "p"
      [["00"],["0."],["0."]]
    elsif @letter_to_be_translated == "q"
      [["00"],["00"],["0."]]
    elsif @letter_to_be_translated == "r"
      [["0."],["00"],["0."]]
    elsif @letter_to_be_translated == "s"
      [[".0"],["0."],["0."]]
    elsif @letter_to_be_translated == "t"
      [[".0"],["00"],["0."]]
    elsif @letter_to_be_translated == "u"
      [["0."],[".."],["00"]]
    elsif @letter_to_be_translated == "v"
      [["0."],["0."],["00"]]
    elsif @letter_to_be_translated == "w"
      [[".0"],["00"],[".0"]]
    elsif @letter_to_be_translated == "x"
      [["00"],[".."],["00"]]
    elsif @letter_to_be_translated == "y"
      [["00"],[".0"],["00"]]
    elsif @letter_to_be_translated == "z"
      [["0."],[".0"],["00"]]
    elsif @letter_to_be_translated == " "
      [[".."],[".."],[".."]]
    elsif @letter_to_be_translated == "."
      [[".."],["00"],[".0"]]
    else
      "Undefined Character"
    end
  end
end
