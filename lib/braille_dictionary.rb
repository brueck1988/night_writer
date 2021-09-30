class BrailleDictionary
  attr_reader :character

  def initialize(character)
    @character = character
  end

  def converter
    dictionary =  {}
    dictionary["a"] = [["0."],[".."],[".."]]
    dictionary["b"] = [["0."],["0."],[".."]]
    dictionary["c"] = [["00"],[".."],[".."]]
    dictionary["d"] = [["00"],[".0"],[".."]]
    dictionary["e"] = [["0."],[".0"],[".."]]
    dictionary["f"] = [["00"],["0."],[".."]]
    dictionary["g"] = [["00"],["00"],[".."]]
    dictionary["h"] = [["0."],["00"],[".."]]
    dictionary["i"] = [[".0"],["0."],[".."]]
    dictionary["j"] = [[".0"],["00"],[".."]]
    dictionary["k"] = [["0."],[".."],["0."]]
    dictionary["l"] = [["0."],["0."],["0."]]
    dictionary["m"] = [["00"],[".."],["0."]]
    dictionary["n"] = [["00"],[".0"],["0."]]
    dictionary["o"] = [["0."],[".0"],["0."]]
    dictionary["p"] = [["00"],["0."],["0."]]
    dictionary["q"] = [["00"],["00"],["0."]]
    dictionary["r"] = [["0."],["00"],["0."]]
    dictionary["s"] = [[".0"],["0."],["0."]]
    dictionary["t"] = [[".0"],["00"],["0."]]
    dictionary["u"] = [["0."],[".."],["00"]]
    dictionary["v"] = [["0."],["0."],["00"]]
    dictionary["w"] = [[".0"],["00"],[".0"]]
    dictionary["x"] = [["00"],[".."],["00"]]
    dictionary["y"] = [["00"],[".0"],["00"]]
    dictionary["z"] = [["0."],[".0"],["00"]]
    dictionary[" "] = [[".."],[".."],[".."]]
    dictionary["."] = [[".."],["00"],[".0"]]
    dictionary[","] = [[".."],["0."],[".."]]
    dictionary["'"] = [[".."],[".."],["0."]]
    if dictionary[@character]
      dictionary[@character]
    else
      "Undefined Character"
    end
  end
end
