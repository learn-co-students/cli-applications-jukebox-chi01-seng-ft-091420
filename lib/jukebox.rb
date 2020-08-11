# Add your code here
def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end


def list(songs)
  i = 1
  songs.each do |song|
  puts "#{i}. #{song}"
  i += 1
  end
end


def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if user_response.to_i.between?(1, songs.length)
    puts songs[user_response.to_i-1]
  elsif songs.include? user_response
    puts songs.find {|song| song ==  user_response}
  else
    puts "Invalid input, please try again"
  end
  end
  
  
  def run 