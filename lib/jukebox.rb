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
    puts "Playing #{songs.find {|element| element == user_response}}"
  elsif (1..9).to_a.include?(user_response.to_i)
    puts "Playing #{songs[user_response.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end
  songs
end

def list(songs)
  songs.each_with_index do |element, index|
   puts "#{index + 1}. #{element}"
 end
end


def exit_jukebox
  puts "Goodbye"
end

# def run(my_songs)
# help
#   puts "Please enter a command:"
#   user_response = gets.chomp
#   while user_response != "exit"
#     case user_response
#       when "help"
#         help
#         puts "Please enter a command:"
#         user_response = gets.chomp
#       when "list"
#         list(my_songs)
#         puts "Please enter a command:"
#         user_response = gets.chomp
#       when "play"
#         play(my_songs)
#         puts "Please enter a command:"
#         user_response = gets.chomp
#       when "exit"
#         exit_jukebox
#       else
#         puts "Invalid input, please try again:"
#         user_response = gets.chomp
#       end
#     end
# end 

def run(my_songs)
  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "play"
      play(my_songs)
    when "list"
      list(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox    
    else
      puts "Invalid input, please try again"
    end
  end
end	

