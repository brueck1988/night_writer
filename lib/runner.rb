require './lib/braille_dictionary'
require './lib/night_writer'

message_file = File.open("message.txt")
text_to_translate = message_file.read
#message_readlines = message_file.readlines.map(&:chomp)
message_file.close
print "message.txt braille.txt\nCreated 'braille.txt' containing 256 characters"

text = NightWriter.new(text_to_translate)
braille = text.convert_to_braille

braille_file = File.new("braille.txt", "w")
braille_file.puts(braille)
braille_file.close
