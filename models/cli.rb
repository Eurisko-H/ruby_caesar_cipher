class CLI
  include TTY
  include CaesarCipher

  def initialize
    @prompt = Prompt.new
    welcome
    menu
  end


  def welcome
    puts "Welcome to Caesar_cipher App"
  end


  def menu
    input = @prompt.select("What would you like to do", ['Encrypt', 'Decrypt', 'Exit'])
    case input
    when "Encrypt"
      run_encrypt
    when "Decrypt"
      run_decrypt
    else "Exit"
      run_log_out
    end
  end


  def run_encrypt
    initial = @prompt.ask("Please, enter your message:")
    shift = @prompt.mask("Now enter the shifter:").to_i
    puts "This is the encrypted message: #{encrypt(initial, shift)}"
  end


  def run_decrypt
    initial = @prompt.ask("Please, enter your message:")
    shift = @prompt.mask("Now enter the shifter:").to_i
    puts "This is the decrypted message: #{decrypt(initial, shift)}"
  end

  def run_log_out
    puts "Remember that always encrypt your messages, bye for now"
  end



end