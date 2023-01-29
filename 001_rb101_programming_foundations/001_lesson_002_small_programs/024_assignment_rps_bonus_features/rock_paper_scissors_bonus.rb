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
  puts('')
  puts("=> #{message}")
end

def print_greeting
  prompt("Welcome to Rock Paper Scissors Lizard Spock...")
  sleep(1.3)
  prompt("where each move beats -- and is beaten by! --")
  sleep(1.3)
  prompt("TWO other moves.")
  sleep(1.3)
  prompt("You'll play against the computer.")
  sleep(1.3)
  prompt("The first to win #{ROUNDS_TO_WIN} rounds wins the match.")
  sleep(2.1)
end

def print_rules
  prompt("Here's how to play:")
  sleep(1.5)
  OUTCOMES.each do |move, result|
    prompt("#{move.capitalize}:")
    sleep(1)
    prompt("1) #{result.values[0]} #{result.keys[0]}.")
    prompt("2) #{result.values[1]} #{result.keys[1]}.")
    puts('')
    sleep(2)
  end
end

def play_game
  loop do
    wins = { 'player' => 0, 'computer' => 0 }

    until wins['player'] == ROUNDS_TO_WIN || wins['computer'] == ROUNDS_TO_WIN
      player_choice = resolve_player_move
      computer_choice = CHOICES.values.sample
      print_selected_choices(player_choice, computer_choice)

      round_winner = find_round_winner(player_choice, computer_choice)
      update_wins(round_winner, wins)

      print_round_outcome(player_choice, computer_choice)
      print_wins(wins)
    end

    print_final_winner(wins)
    break unless play_again?
  end
end

def resolve_player_move
  loop do
    move = choose_move
    return CHOICES[move] if valid?(move)
    prompt("That's not a valid choice.")
    puts('')
    sleep(1.5)
    system('clear')
  end
end

def choose_move
  prompt("Choose your move:")
  sleep(0.5)
  CHOICES.each do |letter, full_word|
    prompt("Type '#{letter}' for '#{full_word}'.")
  end
  puts('')
  gets.downcase.chomp
end

def valid?(move)
  CHOICES.include?(move)
end

def print_selected_choices(move, other_move)
  sleep(0.5)
  prompt("You chose #{move}. The computer chose #{other_move}.")
  sleep(0.8)
end

def find_round_winner(move, other_move)
  if player_won?(move, other_move)
    'player'
  elsif player_won?(other_move, move)
    'computer'
  else
    'draw'
  end
end

def player_won?(move, other_move)
  OUTCOMES[move].include?(other_move)
end

def update_wins(winner, match_scores)
  if winner == 'player'
    match_scores['player'] += 1
  elsif winner == 'computer'
    match_scores['computer'] += 1
  else
    match_scores
  end
end

def print_round_outcome(player, other)
  if OUTCOMES[player][other]
    prompt("#{player.capitalize} #{OUTCOMES[player][other]} #{other}.")
    sleep(0.8)
    prompt("You won!")
  elsif OUTCOMES[other][player]
    prompt("#{other.capitalize} #{OUTCOMES[other][player]} #{player}.")
    sleep(0.8)
    prompt("The computer won!")
  else
    prompt("It's a draw!")
  end
end

def print_wins(match_scores)
  sleep(1)
  prompt("Your score is #{match_scores['player']}.")
  sleep(0.8)
  prompt("The computer's score is #{match_scores['computer']}.")
  puts('')
  sleep(1.5)
  system('clear')
end

def print_final_winner(match_score)
  if match_score['player'] == 3
    prompt("You won the match!")
  else
    prompt("The computer won the match!")
  end
  sleep(1)
  prompt("Good game!")
  sleep(1)
  system('clear')
end

def play_again?
  prompt("Type 'y' or 'yes' if you'd like to play again:")
  puts('')
  answer = gets.strip.downcase.chomp
  answer.match?(/(yes|y{1})$/)
end

def print_goodbye
  prompt("Thank you for playing. Goodbye!")
  sleep(1.5)
end

system('clear')
print_greeting
system('clear')
print_rules
system('clear')
play_game
system('clear')
print_goodbye
system('clear')
