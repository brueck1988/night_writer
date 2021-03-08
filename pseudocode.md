##Night Writer

Pseudocode
Take textfile with text as input
  start with lower case alphabet in order and then go to 256 characters
  Create output text file comprised of braille from input
  Translate the input into braille.
    each character will be an element in an array.
    Ruby
    """
    irb(main):039:0> h = [["0."],["00"],[".."]]
    => [["0."], ["00"], [".."]]
    irb(main):040:0> hhhh = h.flatten
    => ["0.", "00", ".."]
    irb(main):041:0> hhhh[0] + hhhh[1] + hhhh[2]
    => "0.00.."
    """
    a = [["0."],[".."],[".."]]
    b = [["0."],["0."],[".."]]
    c = [["00"],[".."],[".."]]
    d = [["00"],[".0"],[".."]]
    [3] pry(#<NightWriter>)> a[1] + b[1] + c[1]
    => ["..", "0.", ".."]
    [4] pry(#<NightWriter>)> combined_array = a[1] + b[1] + c[1]
    => ["..", "0.", ".."]
    [5] pry(#<NightWriter>)> combined_array.join
    => "..0..."
    """
    Create this conversion table or braille dictionary
    Iterate through a data set that equates each letter to a array.
    output the results. (each row shall be no more than 40 braille characters or 80 characters wide)

      Covert braille back into letters.
        braille will be in 2x6 matrix.
            Since two dimensional arrays are not possible in Ruby, I think this will need to be (3)2 character arrays for each letter
            output the braille to the newly created text file

            #remove two characters 3 times, send three arrays to coverter to get letter,
            #send letter to array.
            #start new line for each element of twenty

            #select arrays in groups of 3
            #select letters in groups of two for each line
            #recombine three arrays of two characters to make one letter
            #convert braille to letter with dictionary
