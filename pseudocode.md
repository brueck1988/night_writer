##Night Writer

Pseudocode
Take textfile with text as input
  start with lower case alphabet in order and then go to 256 characters
  Create output text file comprised of braile from input
  Translate the input into braile.
    each character will be an element in an array.
      iterate through a data set that equates each letter to a array.

      Covert braile back into letters.
        braile will be in 2x6 matrix.
            Since two dimensional arrays are not possible in Ruby, I think this will need to be (3)2 character arrays for each letter
  output the braile to the newly created text file
