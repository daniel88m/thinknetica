# Day number

puts 'Введите дату'
day = gets.chomp.to_i

puts 'Введите месяц'
month = gets.chomp.to_i

puts 'Введите год'
year = gets.chomp.to_i

days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

days_in_month[1] = 29 if (year % 4).zero? && year % 100 != 0 || (year % 400).zero?

months_range = 0..(month - 1)
day_number = months_range.size == 1 ? day : days_in_month[months_range].sum + day

puts "Порядковый номер даты #{day_number}"
