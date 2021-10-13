##Night Writer

Pseudocode
Take textfile with text as input
  start with lower case alphabet in order and then go to 256 characters
  Create output text file comprised of braille from input
  
  
  Translate the input letters into braille.
    each character will be an element in an array.


```ruby
# Test basic premise of recombining braille arrays into the required string format
    irb(main):039:0> h = [["0."],["00"],[".."]]
    => [["0."], ["00"], [".."]]
    irb(main):040:0> hhhh = h.flatten
    => ["0.", "00", ".."]
    irb(main):041:0> hhhh[0] + hhhh[1] + hhhh[2]
    => "0.00.."
```
    
```ruby
# Test how several letters can be recombined sequentially
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
```

Create a braille dictionary that equates each letter to a braille character array.
Since two dimensional arrays are not possible in Ruby, I think this will need to be (3) 2 character strings for each letter.
Output the results sequentially. (Each row shall be no more than 40 braille characters or 80 characters wide)

Covert braille back into letters.
  Braille will be in 2x3 matrix.
    Remove two characters 3 times, send three arrays to coverter to get letter,
    Send letter to array.
    Start new line for each element of twenty
    Select arrays in groups of 3
    Select letters in groups of two for each line
    Recombine three arrays of two characters to make one letter
    Convert braille to letter with dictionary
    Output the braille to the newly created text file
