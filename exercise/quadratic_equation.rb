# Calculate quadratic equation

puts 'Введите коэффициент a'
a = gets.chomp.to_f

puts 'Введите коэффициент b'
b = gets.chomp.to_f

puts 'Введите коэффициент c'
c = gets.chomp.to_f

d = b**2 - 4 * a * c

if d.positive?
  x1 = ((-1 * b) + Math.sqrt(d)) / (2 * a)
  x2 = ((-1 * b) - Math.sqrt(d)) / (2 * a)

  puts "Дискриминант = #{d}, корни уравнения: #{x1}, #{x2}"
elsif d.zero?
  x = (-1 * b) / (2 * a)

  puts "Дискриминант = #{d}, корень уравнения: #{x}"
else
  puts "Дискриминант = #{d}, корней нет"
end
