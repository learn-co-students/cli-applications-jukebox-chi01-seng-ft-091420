require 'pry'
# Add your code here

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  until user_input == "exit" do
    if user_input == "help"
      help
    elsif user_input == "play"
      play(songs)
    elsif user_input == "list"
      list(songs)
    else
      puts "Invalid Input"
    end
    user_input = get_user_input
  end
  exit_jukebox
end

def get_user_input
  puts "Please enter a command:"
  user_input = gets.strip
  return user_input
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index+1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  song_number_name_input = gets.strip
  
  #input given is a song name/title then to_i would equate to 0
  if song_number_name_input.to_i == 0
    songs.each do |song|
      if song == song_number_name_input
        puts "Playing #{song}"
      else
        puts "Invalid input, please try again"
      end
      break
    end
  #input given is a song number and is not an invalid song number
  elsif song_number_name_input.to_i > 0 && song_number_name_input.to_i <= songs.length
    puts "Playing "+ songs.fetch(song_number_name_input.to_i - 1).to_s
  #given wrong song number - out of array bounds
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end