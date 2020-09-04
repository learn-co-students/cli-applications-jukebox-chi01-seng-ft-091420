require 'pry'

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

def list(songs_array)
  songs_array.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs_array)
  puts "Please enter a song name or number:"
  input = gets.downcase.strip
  songs_array.each do |track|
    if track.downcase.include? input
      return puts "Playing #{track}"
    elsif (1..9).include?(input.to_i)
      return puts "Playing #{songs_array[input.to_i-1]}"
    end
  end
  puts "Invalid input, please try again"
end


def exit_jukebox
  puts"Goodbye"
end


def run(songs_array)
  puts "Please enter a command:"
  input = gets.downcase.strip
  if input == "exit"
    exit_jukebox
  elsif input == "list"
    list(songs_array)
    run(songs_array)
  elsif input == "play"
    play(songs_array)
    run(songs_array)
  elsif input == "help"
    help
    run(songs_array)
  end
end
  
  
# def run(songs_array)
#   help
#   puts "Please enter a command:"
#   input = gets.downcase.strip
#   until input == "exit" do
#     if input == "list"
#       list(songs_array)
#     elsif input == "play"
#       play(songs_array)
#     elsif input == "help"
#       help
#     end
#   end
#   exit_jukebox
# end
    
  
  
# def play(songs_array)
#   puts "Please enter a song name or number:"
#   input = gets.strip
#   selection = ""
#   song_names = list(songs_array)
#   song_names.each do |track|
#   if track.include? input.to_s
#     selection = track
#     binding.pry
#   end
#   end
#   if selection == ""
#     puts "Invalid input, please try again"
#     return play(songs_array)
#   end
#   puts "Playing #{selection}"
# end
  
  
    

# list(songs)    
# play(songs)
# help    
# exit_jukebox
  
# run(songs)
