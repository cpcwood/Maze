#Maze Program

#Define enter command method
def enter_command
  while true
    print "Enter command: Left, Right, or Forward: "
    command = gets.strip
    command.downcase!
    if command == "left" || command == "right" || command == "forward"
      break
    end
  end
  return command
end

#Define try again function
def try_again
  while true
    print "Would you like to play again? [y/n]: "
    input = gets.strip
    input.downcase!
    case input
    when 'y', 'yes'
      puts 'Playing again'
      play_maze
    when /\A[nN]o?\Z/
      break
    end
  end
end

#Define maze
def maze(command)
  if command == "left"
    puts "You have encounterd a Warewolf, and died\nGame Over"
    return false
  elsif command == "right"
    puts "You have encounterd a Goblin, and died\nGame Over"
    return false
  elsif command == "forward"
    puts "You are safe, please contine"
    return true
  end
end

#Define play maze
def play_maze
  puts "Welcome to the Maze!!\nFollow the rules and hopefully you will get out alive"
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
end

play_maze
try_again
