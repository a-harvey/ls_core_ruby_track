CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'Spock'
}

OUTCOMES = {
  'rock' => { 'scissors' => 'crushes', 'lizard' => 'crushes' },
  'paper' => { 'rock' => 'covers', 'Spock' => 'disproves' },
  'scissors' => { 'paper' => 'cuts', 'lizard' => 'decapitates' },
  'lizard' => { 'paper' => 'eats', 'Spock' => 'poisons' },
  'Spock' => { 'scissors' => 'smashes', 'rock' => 'vaporizes' }
}

ROUNDS_TO_WIN = 3

def prompt(message)
  puts("")
  puts("=> #{message}")
end

def greet_player
  prompt("Welcome to Rock Paper Scissors Lizard Spock...")
  sleep(1.5)
  prompt("where each move beats -- and is beaten by! --")
  sleep(1.5)
  prompt("TWO other moves.")
  sleep(2)
  prompt("You'll play against the computer.")
  sleep(1.5)
  prompt("The first to #{ROUNDS_TO_WIN} wins the match.")
  sleep(2.5)
end

def print_rules
  prompt("Here's how to play:")
  sleep(2)
  OUTCOMES.each do |move, result|
    prompt("#{move.capitalize}:")
    sleep(1)
    prompt("1) #{result.values[0]} #{result.keys[0]}.")
    prompt("2) #{result.values[1]} #{result.keys[1]}.")
    puts("")
    sleep(2.5)
  end
end

def play_game
  loop do
    player_wins = 0
    computer_wins = 0

    until player_wins == ROUNDS_TO_WIN || computer_wins == ROUNDS_TO_WIN
      player_choice = resolve_player_move
      computer_choice = CHOICES.values.sample

      play_round(player_choice, computer_choice)

      player_wins += 1 if raise_player_wins?(player_choice, computer_choice)
      computer_wins += 1 if raise_computer_wins?(computer_choice, player_choice)

      print_wins(player_wins, computer_wins)
    end
    declare_final_winner(player_wins)
    player_decision = ask_to_play_again
    break unless player_decision == "y" || player_decision == "yes"
  end
end

def resolve_player_move
  loop do
    move = choose_move
    return CHOICES[move] if valid?(move)
    prompt("That's not a valid choice.")
    puts("")
    sleep(1.5)
    system("clear")
  end
end

def choose_move
  prompt("Choose your move:")
  sleep(0.5)
  CHOICES.each do |letter, full_word|
    prompt("Type '#{letter}' for '#{full_word}'.")
  end
  puts("")
  gets.downcase.chomp
end

def valid?(move)
  CHOICES.include?(move)
end

def play_round(move, other_move)
  sleep(0.5)
  prompt("You chose #{move}. The computer chose #{other_move}.")
  sleep(1.5)
  if move == other_move
    prompt("It's a draw!")
  else
    print_round_winner(move, other_move)
  end
end

def print_round_winner(player, other)
  if OUTCOMES[player][other]
    prompt("#{player.capitalize} #{OUTCOMES[player][other]} #{other}.")
    sleep(1)
    prompt("You won!")
  else
    prompt("#{other.capitalize} #{OUTCOMES[other][player]} #{player}.")
    sleep(1)
    prompt("The computer won!")
  end
end

def raise_player_wins?(player, other)
  OUTCOMES[player].include?(other)
end

def raise_computer_wins?(other, player)
  OUTCOMES[other].include?(player)
end

def print_wins(player, other)
  sleep(0.75)
  prompt("Your score is #{player}.")
  sleep(1)
  prompt("The computer's score is #{other}.")
  puts("")
  sleep(1.5)
  system("clear")
end

def declare_final_winner(score)
  if score == 3
    prompt("You won the match!")
  else
    prompt("The computer won the match!")
  end
  puts("")
  sleep(1.5)
  system("clear")
end

def ask_to_play_again
  answer = ''
  loop do
    prompt("Would you like to play again? (Type 'yes' or 'no')")
    puts("")
    answer = gets.strip.downcase.chomp
    if answer == "yes" || answer == "no"
      break
    else
      prompt("That's an invalid response.")
    end
  end
  system("clear")
  answer
end

def say_goodbye
  prompt("Thank you for playing. Goodbye!")
  sleep(1.5)
end

system("clear")
greet_player
system("clear")
print_rules
system("clear")
play_game
system("clear")
say_goodbye
system("clear")
