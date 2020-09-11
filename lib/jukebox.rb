# Add your code here

require "pry"

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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  
  
  if songs.include? user_response
    puts "Playing #{songs.find |element| element == user_response}"
  
end
  
  #   else 
  #   puts "Invalid input, please try again"
  #   i += 1
  #   end
  # end
  # hits
end

def list(songs)
  songs.each_with_index do |element, index|
   puts "#{index + 1}. #{element}"
 end
end


def exit_jukebox
  puts "Goodbye"
end

def run 
  puts "Please enter a command:" 
  input = gets.strip
  
  if input == help
    help 
  elsif input == list
    list(songs)
  elsif input == play 
    play(songs)
  else 
    input == exit 
  exit_jukebox
  end
  
  while input != exit do
  run
  end
end
