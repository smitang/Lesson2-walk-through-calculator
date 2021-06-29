# method to determine valid number input
def valid_number?(number)
  number == number.to_i.to_s || number.to_f.to_s
end
# method loan calculator
def loan_calculator
  loop do
  loan_amount = nil
  apr_percent = nil
  duration_years = nil
# verify valid loan amount input
  loop do
    puts "What is your loan amount in dollars?"
    loan_amount = gets.chomp.to_i.to_f
    if valid_number?(loan_amount) && loan_amount > 0
      break
    else
      puts "Error, invalid number. please try again"
    end
  end
# verify valid APR input
  loop do
    puts "What is your APR (Annual Percentage Rate)?"
    apr_percent = gets.chomp.to_f
    if valid_number?(apr_percent) && apr_percent > 0
      break
    else
      puts "Error, invalid number. please try again"
    end
  end
# verify valid loan duration input
  loop do 
    puts "How many years is your loan duration?"
    duration_years = gets.chomp.to_f
    if valid_number?(duration_years) && duration_years > 0
      break
    else
      puts "Error, invalid number. please try again"
    end
  end
# normalizing inputs
adj_apr = apr_percent / 100
monthly_interest = (adj_apr / 12) * 100
loan_duration = duration_years * 12
# calculating loan
  loop do
    puts "Your loan amount is $#{loan_amount}, monthly interest rate is #{monthly_interest}%, and loan duration is #{loan_duration} months."
    puts "Is this correct? (y/n)"
    input = gets.chomp.downcase
    if input == 'y'
      monthly_interest = adj_apr / 12
      monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(loan_duration * -1)))
      puts "Your calculated monthly payment is $#{monthly_payment} per month"
    else
      puts "Sorry for the inconvenience."
    end
    break
  end
  puts "Would you like to try again? (y/n)"
  another_attempt = gets.chomp.downcase
  if another_attempt == 'y'
  else break
  end
  end
  puts "Thank you for using loan calculator"
end
