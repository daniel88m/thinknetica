# Calculate ideal weight

puts 'Привет, как тебя зовут?'
user_name = gets.chomp

puts 'Какой у тебя рост?'
user_height = gets.chomp.to_f

if user_height.positive?
  ideal_weight = (user_height - 110) * 1.15

  if ideal_weight.negative?
    puts 'Ваш вес уже оптимальный'
  else
    puts "#{user_name}, Ваш идеальный вес #{ideal_weight} кг."
  end
else
  puts 'Введен не верный рост'
end
