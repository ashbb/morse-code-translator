HASH_MORSE = {
  '.-' => 'a',
  '-..' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '8',
  '-----' => '0',
  '/' => ' ' # Mapping foward bar to be a space
}

class ConvertFromMorse
  def get_translated(string_morse)
    @translated_string = ""
    puts translate(string_morse)
  end

  def mk_morse_code line
    line.split('').map{|c| HASH_MORSE.index c.downcase}.join(' ')
  end

  private
  def translate(string_morse)
    array_morse = string_morse.split()
    array_morse.each{|morse| @translated_string += HASH_MORSE[morse] unless HASH_MORSE[morse].nil? }
    @translated_string
  end
end

morse = ConvertFromMorse.new

morse.get_translated("-- --- .-. ... . / -.-. --- -.. . / - .... . / -. . .-- / -.. . .- -.. / .-.. .- -. --. ..- .- --. . .-.-.-")
morse.get_translated("--- -- --.  .. ...  -- --- .-. ... .  -.-. --- -..")
morse.get_translated("- .-- . . - ... / .- .-. . / . ...- . -. / ... .... --- .-. - . .-. / .-- .. - .... / -- --- .-. ... . / -.-. --- -..")
morse.get_translated("-- --- .-. ... .   -.-. --- -.. .   .. ...   -... .- -..   ..-. --- .-.   - .-- . . - .. -. --")
morse.get_translated(".. - /  .. ... /  .- /  .--. .-.. . .- ... ..- .-. . /  - --- /  -- . . - /  -.-- --- ..- /  .- ... /  .-- . .-.. .-.")

mc = morse.mk_morse_code('HAHAHA Interesting! Thx PotHix.')
puts mc
morse.get_translated mc