def valid_number?(number_string)
  number_string == number_string.to_i.to_s || number_string == number_string.to_f.to_s
end

def calculator
  puts "Type 'add', 'subtract', 'multiply', or 'divide'"
  input = gets.chomp.downcase
case input
when 'add'
  loop do
    puts "Type a number"
    num = gets.chomp.to_f
    puts "Type a second number"
    num2 = gets.chomp.to_f
    if valid_number?(input)
      result = num + num2
      puts "your addition result is: #{result}"
      break
    else
      puts "error, must enter a valid number"
      puts "would you like to try again? (y/n)?"
      continue = gets.chomp.downcase
      if continue == 'y'
      else
        break
      end
    end
  end
when 'subtract'
  loop do
    puts "Type a number"
    num = gets.chomp.to_f
    puts "Type a second number"
    num2 = gets.chomp.to_f
    if valid_number?(input)
      result = num - num2
      puts "your subtraction result is #{result}"
      break
    else
      puts "error, must enter a valid number"
      puts "would you like to try again? (y/n)?"
      continue = gets.chomp.downcase
      if continue == 'y'
      else
        break
      end
    end
  end
when 'multiply'
  loop do
    puts "Type a number"
    num = gets.chomp.to_f
    puts "Type a second number"
    num2 = gets.chomp.to_f
    if valid_number?(input)
      result = num * num2
      puts "your multiplication result is #{result}"
      break
    else
      puts "error, must enter a valid number"
      puts "would you like to try again? (y/n)?"
      continue = gets.chomp.downcase
      if continue == 'y'
      else
        break
      end
    end
  end
when 'divide'
  loop do
    puts "Type a number"
    num = gets.chomp.to_f
    puts "Type a second number"
    num2 = gets.chomp.to_f
    if valid_number?(input) && num2 != 0
      result = num / num2
      puts "your division result is: #{result}"
      break
    elsif num2 == 0
      puts "error, cannot divide by 0"
      puts "would you like to try again? (y/n)"
      continue = gets.chomp.downcase
      if continue == 'y'
      else
        break
      end
    else
      puts "error, must enter a valid number"
      puts "would you like to try again? (y/n)"
      continue = gets.chomp.downcase
      if continue == 'y'
      else
        break
      end
    end
  end
else
  puts "complete"
end
end
