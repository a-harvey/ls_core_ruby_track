require 'yaml'

# Load the YAML file containing the program's prompt strings and translations
MESSAGES = YAML.load_file('reorganizing_calculator_messages.yml')
# Set the program's language to English ('en') or German ('de')
LANGUAGE = 'en'

# Execute the bulk of the program's submethods
def calculate
  loop do
    num1 = get_num('first_num')
    num2 = get_num('second_num')
    op = choose_operation
    operation_to_message(op)
    outcome(op, num1, num2)
    answer = again?
    break unless answer == 'y' || answer == 'yes'
  end
end

# Pull the prompted text in the correct language from the YAML file
def messages(message, _lang)
  MESSAGES[LANGUAGE][message]
end

# Print to the screen the contents of the specific string from the YAML file
def prompt(message)
  puts("=> #{message}")
end

# Get a valid name from the user
def get_name
  prompt(messages('welcome', LANGUAGE))
  name = ''
  loop do
    name = gets.chomp
    if name.empty? || integer?(name)
      prompt(messages('valid_name', LANGUAGE))
    else
      break
    end
  end
  prompt(messages('hello', LANGUAGE) + "#{name}!")
end

# Get a valid number from the user
def get_num(num_prompt)
  loop do
    prompt(messages(num_prompt, LANGUAGE))
    num = gets.chomp
    if valid_number?(num)
      return num
    else
      prompt(messages('valid_num', LANGUAGE))
    end
  end
end

# Check that the number from the user is valid
def valid_number?(num)
  integer?(num) || float?(num)
end

# Check to see if the user's number is an integer
def integer?(num)
  num.to_i.to_s == num
end

# Check to see if the user's number is a float
def float?(num)
  num.to_f.to_s == num
end

# Ask the user for a valid operator choice
def choose_operation
  prompt(messages('operator_prompt', LANGUAGE))
  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('op_choice', LANGUAGE))
    end
  end
  operator
end

# Print to the screen which operation is being performed on the valid numbers
def operation_to_message(op)
  symbol = case op
           when '1'
             MESSAGES[LANGUAGE]['op_verb1']
           when '2'
             MESSAGES[LANGUAGE]['op_verb2']
           when '3'
             MESSAGES[LANGUAGE]['op_verb3']
           when '4'
             MESSAGES[LANGUAGE]['op_verb4']
           end
  prompt(symbol.to_s + messages('op_calc', LANGUAGE))
end

# Calculate and print to the screen the result of the calculation
def outcome(op, num1, num2)
  result = case op
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_f / num2.to_f
           end
  prompt(messages('op_result', LANGUAGE) + result.to_s + '.')
end

# Ask the user if they'd like to make another calculation
def again?
  prompt(messages('calc_again', LANGUAGE))
  gets.downcase.chomp
end

# Bid the user farewell when they choose to exit the program
def goodbye
  prompt(messages('goodbye', LANGUAGE))
end

# The main body of the program
get_name
calculate
goodbye
