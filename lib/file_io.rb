module FileIo
  def read_text_file(file_name)
  message_file = File.open(file_name)
  @characters_to_translate = message_file.read
  message_file.close
  @characters_to_translate
  end

  def write_file(file_name, file_contents)
    file = File.new(file_name, "w")
    file.puts(file_contents)
    file.close
  end
end
