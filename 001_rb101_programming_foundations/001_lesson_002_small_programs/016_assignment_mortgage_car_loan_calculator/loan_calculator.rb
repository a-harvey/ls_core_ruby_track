require 'yaml'

MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def calculate_loan
  puts ''
  prompt(messages('welcome'))
  loop do
    amount = get_loan_amount('loan_amount')
    apr = get_loan_apr('annual_percentage_rate')
    interest = apr_to_monthly_interest(apr)
    duration = get_full_loan_duration
    owed_monthly = calculate_owed(amount, interest, duration)
    add_zero(owed_monthly)
    answer = again
    break unless answer.match?(/(y|yes)/)
  end
  prompt(messages('goodbye'))
end

def messages(message)
  MESSAGES[message]
end

def prompt(message)
  puts ''
  puts("=> #{message}")
  puts ''
end

def get_loan_amount(loan_amount_prompt)
  loop do
    prompt(messages(loan_amount_prompt))
    amount = gets.strip.chomp
    remove_extra_characters(amount)
    if valid_number?(amount) && amount != '0'
      system('clear')
      return amount
    else
      prompt(messages('invalid_loan_amount'))
    end
  end
end

def get_loan_apr(loan_apr_prompt)
  loop do
    prompt(messages(loan_apr_prompt))
    apr = gets.strip.chomp
    remove_extra_characters(apr)
    if valid_number?(apr) && !apr.match(/(^(0|.0)+$)/) && apr.length <= 5
      system('clear')
      return apr
    else
      prompt(messages('invalid_loan_apr'))
    end
  end
end

def get_full_loan_duration
  prompt(messages('total_loan_duration_intro'))
  loop do
    loan_years = get_loan_duration('total_loan_duration_years')
    loan_months = get_loan_duration('total_loan_duration_months')
    duration = duration_to_months(loan_years) + loan_months.to_i
    if duration == 0
      prompt(messages('invalid_loan_duration'))
    else
      return duration
    end
  end
end

def get_loan_duration(loan_duration_prompt)
  loop do
    prompt(messages(loan_duration_prompt))
    loan_duration = gets.strip.chomp
    remove_extra_characters(loan_duration)
    if valid_number?(loan_duration) && !loan_duration.match?(/\./)
      return loan_duration
    else
      prompt(messages('invalid_loan_duration'))
    end
  end
end

def remove_extra_characters(user_input)
  if user_input.match?(/[^\w.-]/)
    user_input.gsub!(/[^\w.-]/, '')
  else
    user_input
  end
end

def valid_number?(user_input)
  ((float?(user_input) || integer?(user_input))) && !user_input.start_with?('-')
end

def float?(user_input)
  user_input.to_f.to_s == user_input || user_input.to_f.to_s + '0' == user_input
end

def integer?(user_input)
  user_input.to_i.to_s == user_input
end

def apr_to_monthly_interest(user_apr)
  (user_apr.to_f / 100) / 12
end

def duration_to_months(user_duration_in_years)
  user_duration_in_years.to_i * 12
end

def calculate_owed(amount, interest, duration)
  system('clear')
  owed = amount.to_f * (interest / (1 - (1 + interest)**(-duration)))
  owed.round(2).to_s.reverse.gsub(/(\d\d\d)(?=\d)/, '\\1,').reverse
end

def add_zero(amount_owed)
  before_decimal, after_decimal = amount_owed.to_s.split('.')
  if after_decimal.length == 1
    [before_decimal, after_decimal].join('.')
    prompt(messages('monthly_payment') + amount_owed.to_s + '0.')
  else
    prompt(messages('monthly_payment') + amount_owed.to_s + '.')
  end
end

def again
  answer = ''
  loop do
    prompt(messages('another_calculation'))
    answer = gets.strip.downcase.chomp
    if answer.match?(/^[(y|yes|n|no)]+$/)
      system('clear')
      break
    else
      prompt(messages('invalid_again_response'))
    end
  end
  answer
end

calculate_loan
