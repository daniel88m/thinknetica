# Calculate triangle area

puts 'Введити длину основания треугольника'
a = gets.chomp.to_f

puts 'Введити высоту треугольника'
h = gets.chomp.to_f

if a.positive? && h.positive?
  puts "Площадь треугольника равна #{0.5 * a * h}."
else
  puts 'Введены не верные значения длины основания или высоты треугольника'
end
