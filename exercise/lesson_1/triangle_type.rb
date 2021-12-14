# Calculate triangle type

puts 'Введите сторону a'
a = gets.chomp.to_f

puts 'Введите сторону b'
b = gets.chomp.to_f

puts 'Введите сторону c'
c = gets.chomp.to_f

if a.positive? && b.positive? && c.positive?

  biggest_side = [a, b, c].max
  smaller_sides = [a, b, c].reject { |x| x == biggest_side }

  right_triangle = biggest_side**2 == smaller_sides.sum { |x| x**2 }
  isosceles_triangle = a == b || a == c || b == c

  if a == b && b == c
    puts 'Треугольник равнобедренный и равносторонний, но не прямоугольный.'
  elsif isosceles_triangle && right_triangle
    puts 'Треугольник равнобедренный и прямоугольный.'
  elsif isosceles_triangle
    puts 'Треугольник равнобедренный.'
  elsif right_triangle
    puts 'Треугольник прямоугольный.'
  else
    puts 'Треугольник разносторонний.'
  end
else
  puts 'Введены не верные стороны.'
end
