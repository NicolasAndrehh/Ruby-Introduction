@morse_table = {
  ".-"   => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.."  => "D",
  "."    => "E",
  "..-." => "F",
  "--."  => "G",
  "...." => "H",
  ".."   => "I",
  ".---" => "J",
  "-.-"  => "K",
  ".-.." => "L",
  "--"   => "M",
  "-."   => "N",
  "---"  => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-."  => "R",
  "..."  => "S",
  "-"    => "T",
  "..-"  => "U",
  "...-" => "V",
  ".--"  => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "--.." => "Z",
  ".----" => "1",
  "..---" => "2",
  "...--" => "3",
  "....-" => "4",
  "....." => "5",
  "-...." => "6",
  "--..." => "7",
  "---.." => "8",
  "----." => "9",
  "-----" => "0"
}

# Decode Morse code string
def decode_morse(morse_str)
  words = morse_str.split("   ")
  decoded_words = words.map do |word|
    letters = word.split(" ")
    decoded_letters = letters.map { |letter| @morse_table[letter] }
    decoded_letters.join("")
  end
  decoded_words.join(" ")
end

# Example usage
morse_str = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_str = decode_morse(morse_str)
puts decoded_str