#Maze Program

#Define enter command method
def enter_command
  entered = false
  while entered == false
    puts "Enter command: Left, Right, or Forward"
    command = gets.chomp
    command.downcase!
    if command == "left" || command == "right" || command == "forward"
      entered = true
    end
  end
  return command
end

#Define maze
def maze(command)
  #responses
  response1 = "You have encounterd a Warewolf, and died\nGame Over"
  response2 = "You have encounterd a Goblin, and died\nGame Over"
  response3 = "You are safe, please contine"
  #commands
  if command == "left"
    puts response1
    return false
  elsif command == "right"
    puts response2
    return false
  elsif command == "forward"
    puts response3
    return true
  end
end

#run maze
if maze(enter_command) == true
  if maze(enter_command) == true
    puts "Congratulations you have exited the maze and won the game!\nWinner\nGame Over"
    return true
  else
    return false
  end
else
  return false
end
