songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def say_hello(name)
  "Hi #{name}!"
end

def help
  puts "help: displays this message\n
  list: displays a list of songs you can play\n
  play: lets you choose a song to play\n
  exit: exits this program\n"
end

def play(songs)
  list(songs)
  puts "Select a song by entering its number or full title: "
  input=gets.chomp
  nums=["1","2","3","4","5","6","7","8"]
  flag=true
  songs.each do |song|
    if song==input
      puts "Playing #{song}"
      flag=false
    end
  end
  nums.each do |num|
    if num==input
      puts "Playing #{songs[num.to_i-1]}"
      flag=false
    end
  end
  if flag==true
    puts "Invalid input, please try again"
  end

end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def get_input
  puts "Please enter a command:\n"
  input=gets.chomp
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input=get_input
  while input.downcase != "exit"
    case input.downcase
      when "help"
        help
      when "play"
        play(songs)
      when "list"
        list(songs)
      end
    
    input=get_input
  end
  exit_jukebox
end
