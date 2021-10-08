This program has two runner files, night_writer and night_reader. Night_writer
converts English into Braille, and night_reader converts braille into English.
Both programs are limited to the following characters:
[abcdefghijklmnopqrstuvwxyz ,.']

All other characters will return "Undefined Character"

Since these files employ ARGV, each runner file expects the user to provide the
name of the file to be read, and the name of the file to be created/written to
after the run command, as shown in the following command line prompts.

ruby ./lib/night_writer.rb text_input.txt braille_output.txt
  Ex. -> ruby ./lib/night_writer.rb message.txt braille_output1.txt

ruby ./lib/night_reader.rb braille_input.txt text_output.txt
  Ex. -> ruby ./lib/night_reader.rb braille_output1.txt original_message.txt
  
To run a test with mini test:
  Ex. -> ruby test/night_reader_translator_test.rb
  
To run all tests with mini test at once:
  Ex. -> rake
  
  
  
