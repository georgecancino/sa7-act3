POINTS = [5, 10, 15]

total_points = 0

puts "Welcome to the Adventure Game!"
puts "You have #{total_points} points."

loop do
  print "Choose a room (1-3) to enter or 'exit' to end the game: "
  choice = gets.chomp.downcase

  if choice == 'exit'
    puts "Game over! You collected a total of #{total_points} points."
    break
  end

  room_number = choice.to_i

  unless (1..3).include?(room_number)
    puts "Invalid room number. Please choose a number between 1 and 3."
    next
  end

  points = POINTS[room_number - 1]
  total_points += points
  puts "You entered Room #{room_number} and earned #{points} points."
end
