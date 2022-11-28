require 'yaml'

MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def calculate_loan
  prompt(messages('welcome'))
  loop do
    amt = get_loan_amt('loan_amount')
    apr = get_loan_apr('annual_percentage_rate')
    int_rate = apr_to_monthly_interest(apr)
    full_loan_dur = get_full_loan_dur
    owed_monthly = calc_formula(amt, int_rate, full_loan_dur)
    add_zero(owed_monthly)
    answer = again?
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
end

def get_loan_amt(loan_amt_prompt)
  loop do
    prompt(messages(loan_amt_prompt))
    loan_amt_response = gets.strip.chomp
    rm_extra_chars(loan_amt_response)
    if validate(loan_amt_response) && loan_amt_response != '0'
      return loan_amt_response
    else
      prompt(messages('valid_loan_amount'))
    end
  end
end

def get_loan_apr(loan_apr_prompt)
  loop do
    prompt(messages(loan_apr_prompt))
    loan_apr_response = gets.strip.chomp
    rm_extra_chars(loan_apr_response)
    if validate(loan_apr_response) && !loan_apr_response.match(/(^0$|.00*$)/)
      return loan_apr_response
    else
      prompt(messages('valid_loan_apr'))
    end
  end
end

def get_full_loan_dur
  prompt(messages('total_loan_dur_intro'))
  loop do
    user_loan_years = get_loan_dur('total_loan_dur_years')
    user_loan_months = get_loan_dur('total_loan_dur_months')
    if integer?(user_loan_years) || integer?(user_loan_months)
      prompt(messages('valid_loan_dur'))
    else
      dur = dur_to_months(user_loan_years) + user_loan_months.to_i
      if dur == 0
        prompt(messages('valid_loan_dur'))
      else
        return dur
      end
    end
  end
end

def get_loan_dur(loan_dur_prompt)
  loop do
    prompt(messages(loan_dur_prompt))
    loan_dur_response = gets.strip.chomp
    rm_extra_chars(loan_dur_response)
    if validate(loan_dur_response) && !loan_dur_response.match?(/\./)
      return loan_dur_response
    else
      prompt(messages('valid_loan_dur'))
    end
  end
end

def rm_extra_chars(user_input)
  if user_input.match?(/[^\d.-]/)
    user_input.gsub!(/[^\d.-]/, '')
  else
    user_input
  end
end

def validate(user_input)
  if user_input.match?(/-/)
    prompt(messages('negative'))
  else
    user_input.match?(/[^\D]/)
  end
end

def integer?(user_dur_input)
  user_dur_input.to_s.match?(/\./)
end

def apr_to_monthly_interest(user_apr)
  (user_apr.to_f / 100) / 12
end

def dur_to_months(user_dur_in_yrs)
  user_dur_in_yrs.to_i * 12
end

def calc_formula(amt, int_rate, full_loan_dur)
  owed = amt.to_f * (int_rate / (1 - (1 + int_rate)**(-full_loan_dur)))
  owed.round(2).to_s.reverse.gsub(/(\d\d\d)(?=\d)/, '\\1,').reverse
end

def add_zero(amt_owed)
  before_decimal, after_decimal = amt_owed.to_s.split('.')
  if after_decimal.length == 1
    [before_decimal, after_decimal].join('.')
    prompt(messages('monthly_payment') + amt_owed.to_s + '0.')
  else
    prompt(messages('monthly_payment') + amt_owed.to_s + '.')
  end
end

def again?
  answer = ''
  loop do
    prompt(messages('another_calc'))
    answer = gets.strip.downcase.chomp
    if answer.match?(/(y|yes|n|no)/)
      break
    else
      prompt(messages('valid_again_response'))
    end
  end
  answer
end

calculate_loan
