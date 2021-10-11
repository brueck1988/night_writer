### Turing School Project Week 5 - [Night_Writer](https://backend.turing.io/module1/projects/night_writer/)


Night_Writer is a command line interface app; it takes in a .txt file in English (argument 1) and outputs a .txt file in Braille. The Braille file name is specified in argument 2. 
```
$ ruby ./lib/night_writer.rb message.txt braille.txt
=>Created 'braille.txt' containing 256 characters
```
There is also Braille to English functionality via night_reader:
```
$ ruby ./lib/night_reader.rb braille.txt original_message.txt
=>Created 'original_message.txt' containing 256 characters.
```

Night_writer/reader accepts uppercase characters, and immediately down-cases them for simplicity.
Both night_writer and night_reader are limited to the following characters:
abcdefghijklmnopqrstuvwxyz ,.' **All other characters will return "Undefined Character"**

To run a test with mini test:
  Ex. -> ruby test/night_reader_translator_test.rb
  
To run all tests with mini test at once:
  Ex. -> rake (See below for known issue with this command)

Given more time I would prioritize these changes:
  * Add support for uppcase letters.
  * Add support for additional symbols.
  * Fix the bug where running 'rake' from the command line to run all the tests
    causes one of the tests to become corrupted.

  
  
  
