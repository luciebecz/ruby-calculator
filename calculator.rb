def menu
  puts 'Welcome to Ruby Calculator'
  first_num 
end 


def first_num
  puts 'What is the first number?'
  @first = gets.chomp
  if @first != '0' && @first.to_i == 0
    puts 'Invalid Input. Try again'
    first_num
  else
    @first = @first.to_i
    operator
  end
end
 

def operator
  math = ['+', '-', '*', '/', '**']
  puts "What is the operator?"
  @op_input = gets.chomp
  if math.include? @op_input
    second_num
  elsif 
    puts "Operator #{@op_input} is not supported. I only support #{math}. Please try again"
    operator
  end
   
end

def second_num 
  puts 'What is the second number?'
  @second = gets.chomp
  if @second != '0' && @second.to_i == 0
    puts 'Invalid Input. Try again'
    second
  else 
    @second = @second.to_i
    result
  end
end

def result
  puts 'Calculating...'
  
  case @op_input 
  when '+'
    @answer = @first + @second
  when '-'
    @answer = @first - @second
  when '*'
    @answer = @first * @second
  when '/'
    @answer = @first / @second
  when '**'
    @answer = @first ** @second
  end
  puts "the result of #{@first} #{@op_input} #{@second} is #{@answer}"
  first_num
end

menu
