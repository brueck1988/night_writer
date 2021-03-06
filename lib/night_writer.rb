require "./lib/braille_dictionary"

message_file = File.open("message.txt")
#message = message_file.read
message_readlines = message_file.readlines.map(&:chomp)
message_file.close
print "message.txt braille.txt\nCreated 'braille.txt' containing 256 characters"
#p message
puts '\n\n'
p message_readlines
p BrailleDictionary.h

braille_file = File.new("braille.txt", "w")
braille_file.puts(message_readlines)
braille_file.close
