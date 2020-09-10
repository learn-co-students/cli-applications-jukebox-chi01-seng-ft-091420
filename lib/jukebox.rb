# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

require 'pry'

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.strip
  button = nil
  songs.each_with_index do |song, index|
    if index == song_name.to_i - 1
      button = true
      puts "Playing #{song}"
    elsif song == song_name
      button = true
      puts "Playing #{song}"
    end
  end
  if button == nil 
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_inp = gets.strip
  if user_inp == "list"
    list(songs)
  elsif user_inp == "play"
    play(songs)
  elsif user_inp == "help"
    help
  elsif user_inp == "exit"
    exit_jukebox
  end
end

# Add your code here
