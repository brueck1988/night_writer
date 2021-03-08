class BrailleDictionary
  attr_reader :character

  def initialize(character)
    @character = character.downcase
  end

  def converter
    if character == "a"
      [["0."],[".."],[".."]]
    elsif character == "b"
      [["0."],["0."],[".."]]
    elsif character == "c"
      [["00"],[".."],[".."]]
    elsif character == "d"
      [["00"],[".0"],[".."]]
    elsif character == "e"
      [["0."],[".0"],[".."]]
    elsif character == "f"
      [["00"],["0."],[".."]]
    elsif character == "g"
      [["00"],["00"],[".."]]
    elsif character == "h"
      [["0."],["00"],[".."]]
    elsif character == "i"
      [[".0"],["0."],[".."]]
    elsif character == "j"
      [[".0"],["00"],[".."]]
    elsif character == "k"
      [["0."],[".."],["0."]]
    elsif character == "l"
      [["0."],["0."],["0."]]
    elsif character == "m"
      [["00"],[".."],["0."]]
    elsif character == "n"
      [["00"],[".0"],["0."]]
    elsif character == "o"
      [["0."],[".0"],["0."]]
    elsif character == "p"
      [["00"],["0."],["0."]]
    elsif character == "q"
      [["00"],["00"],["0."]]
    elsif character == "r"
      [["0."],["00"],["0."]]
    elsif character == "s"
      [[".0"],["0."],["0."]]
    elsif character == "t"
      [[".0"],["00"],["0."]]
    elsif character == "u"
      [["0."],[".."],["00"]]
    elsif character == "v"
      [["0."],["0."],["00"]]
    elsif character == "w"
      [[".0"],["00"],[".0"]]
    elsif character == "x"
      [["00"],[".."],["00"]]
    elsif character == "y"
      [["00"],[".0"],["00"]]
    elsif character == "z"
      [["0."],[".0"],["00"]]
    elsif character == " "
      [[".."],[".."],[".."]]
    elsif character == "."
      [[".."],["00"],[".0"]]
    elsif character == ","
      [[".."],["0."],[".."]]
    elsif character == "'"
      [[".."],[".."],["0."]]
    else
      "Undefined Character"
    end
  end
end
