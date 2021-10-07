class AlphanumericDictionary
  attr_reader :character

  def initialize(character)
    @character = character
  end

  def converter
    dictionary =  {}
    dictionary[["0.","..",".."]] = "a"
    dictionary[["0.","0.",".."]] = "b"
    dictionary[["00","..",".."]] = "c"
    dictionary[["00",".0",".."]] = "d"
    dictionary[["0.",".0",".."]] = "e"
    dictionary[["00","0.",".."]] = "f"
    dictionary[["00","00",".."]] = "g"
    dictionary[["0.","00",".."]] = "h"
    dictionary[[".0","0.",".."]] = "i"
    dictionary[[".0","00",".."]] = "j"
    dictionary[["0.","..","0."]] = "k"
    dictionary[["0.","0.","0."]] = "l"
    dictionary[["00","..","0."]] = "m"
    dictionary[["00",".0","0."]] = "n"
    dictionary[["0.",".0","0."]] = "o"
    dictionary[["00","0.","0."]] = "p"
    dictionary[["00","00","0."]] = "q"
    dictionary[["0.","00","0."]] = "r"
    dictionary[[".0","0.","0."]] = "s"
    dictionary[[".0","00","0."]] = "t"
    dictionary[["0.","..","00"]] = "u"
    dictionary[["0.","0.","00"]] = "v"
    dictionary[[".0","00",".0"]] = "w"
    dictionary[["00","..","00"]] = "x"
    dictionary[["00",".0","00"]] = "y"
    dictionary[["0.",".0","00"]] = "z"
    dictionary[["..","..",".."]] = " "
    dictionary[["..","00",".0"]] = "."
    dictionary[["..","0.",".."]] = ","
    dictionary[["..","..","0."]] = "'"

    if dictionary[@character]
      dictionary[@character]
    else
      "Undefined Character"
    end
  end
end
