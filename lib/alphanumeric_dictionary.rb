class AlphanumericDictionary
  attr_reader :character

  def initialize(character)
    @character = character
  end

  def converter
    if character == [["0."],[".."],[".."]]
      "a"
    elsif character == [["0."],["0."],[".."]]
      "b"
    elsif character == [["00"],[".."],[".."]]
      "c"
    elsif character == [["00"],[".0"],[".."]]
      "d"
    elsif character == [["0."],[".0"],[".."]]
      "e"
    elsif character == [["00"],["0."],[".."]]
      "f"
    elsif character == [["00"],["00"],[".."]]
      "g"
    elsif character == [["0."],["00"],[".."]]
      "h"
    elsif character == [[".0"],["0."],[".."]]
      "i"
    elsif character == [[".0"],["00"],[".."]]
      "j"
    elsif character == [["0."],[".."],["0."]]
      "k"
    elsif character == [["0."],["0."],["0."]]
      "l"
    elsif character == [["00"],[".."],["0."]]
      "m"
    elsif character == [["00"],[".0"],["0."]]
      "n"
    elsif character == [["0."],[".0"],["0."]]
      "o"
    elsif character == [["00"],["0."],["0."]]
      "p"
    elsif character == [["00"],["00"],["0."]]
      "q"
    elsif character == [["0."],["00"],["0."]]
      "r"
    elsif character == [[".0"],["0."],["0."]]
      "s"
    elsif character == [[".0"],["00"],["0."]]
      "t"
    elsif character == [["0."],[".."],["00"]]
      "u"
    elsif character == [["0."],["0."],["00"]]
      "v"
    elsif character == [[".0"],["00"],[".0"]]
      "w"
    elsif character == [["00"],[".."],["00"]]
      "x"
    elsif character == [["00"],[".0"],["00"]]
      "y"
    elsif character == [["0."],[".0"],["00"]]
      "z"
    elsif character == [[".."],[".."],[".."]]
      " "
    elsif character == [[".."],["00"],[".0"]]
      "."
    elsif character == [[".."],["0."],[".."]]
      ","
    elsif character == [[".."],[".."],["0."]]
      "'"
    else
      "Undefined Character"
    end
  end
end
