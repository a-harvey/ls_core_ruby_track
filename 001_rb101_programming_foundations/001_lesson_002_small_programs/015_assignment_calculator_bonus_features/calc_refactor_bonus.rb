require 'yaml'

MESSAGES = YAML.load_file('reorganizing_calculator_messages.yml')
# Set the program's language to English ('en') or German ('de')
LANGUAGE = 'en'

def calculate
  loop do
    puts ''
    num1 = get_num('first_num')
    num2 = get_num('second_num')
    op = choose_operation
    operation_to_message(op)
    outcome(op, num1, num2)
    answer = again?
    break unless answer == 'y' || answer == 'yes'
  end
end

def messages(message, _lang)
  MESSAGES[LANGUAGE][message]
end

def prompt(message)
  puts("=> #{message}")
end

def get_name
  prompt(messages('welcome', LANGUAGE))
  name = ''
  loop do
    name = gets.strip.chomp
    if name.empty? || integer?(name)
      prompt(messages('valid_name', LANGUAGE))
    else
      break
    end
  end
  prompt(messages('hello', LANGUAGE) + "#{name}!")
end

def get_num(num_prompt)
  loop do
    prompt(messages(num_prompt, LANGUAGE))
    num = gets.strip.chomp
    if valid_number?(num)
      return num
    else
      prompt(messages('valid_num', LANGUAGE))
    end
  end
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def choose_operation
  prompt(messages('operator_prompt', LANGUAGE))
  operator = ''
  loop do
    operator = gets.strip.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('op_choice', LANGUAGE))
    end
  end
  operator
end

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

def again?
  answer = ''
  loop do
    prompt(messages('calc_again', LANGUAGE))
    answer = gets.strip.downcase.chomp
    if %w(y yes no n).include?(answer)
      break
    else
      prompt(messages('clarify_response', LANGUAGE))
    end
  end
  answer
end

def goodbye
  prompt(messages('goodbye', LANGUAGE))
end

system("clear")
get_name
calculate
goodbye
