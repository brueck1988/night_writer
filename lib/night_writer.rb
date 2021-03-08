require "./lib/braille_dictionary"
require './lib/file_io'





class NightWriter
  include FileIo

  attr_reader :braille_message,
              :text_to_convert

  def initialize
    @text_to_convert = read_text_file(ARGV[0])
    @braille_message = []
  end

  def start
    count_characters_in_input
    make_strings_of_forty_characters_or_less
    convert_to_braille
    write_file(ARGV[1], @braille_message)
    print_message
  end

  def make_strings_of_forty_characters_or_less
    single_line = @text_to_convert.tr("\n","")
    @elements_of_twenty = []
    until single_line.empty?
      @elements_of_twenty << single_line.slice!(0..39)
    end
    @elements_of_twenty
  end

  def convert_to_braille
    @elements_of_twenty.each do |element|
      braille_line = [[], [], []]
      element.each_char do |character|
        letter = BrailleDictionary.new(character)
        braille_line[0] << letter.converter[0]
        braille_line[1] << letter.converter[1]
        braille_line[2] << letter.converter[2]
      end
      @braille_message << braille_line[0].flatten.join + "\n" +
        braille_line[1].flatten.join + "\n" + braille_line[2].flatten.join
    end
    @braille_message
  end

  def count_characters_in_input
    @character_count = @text_to_convert.tr("\n","").length
  end

  def print_message
    print "Created '#{ARGV[1]}' containing #{@character_count} characters."
  end
end

new_translation = NightWriter.new
new_translation.start
