# Cart

cart = {}

loop do
  puts 'Введите название товара или слово "стоп" для завершения покупок'
  title = gets.chomp

  while title.empty?
    puts 'Введите название товара или слово "стоп" для завершения покупок'
    title = gets.chomp
  end

  break if title == 'стоп'

  replaced = if cart[title]
               puts "Товар уже добавлен в корзину. Для замены количества и цены товара #{title} введите \"да\""
               gets.chomp == 'да'
             end

  next unless cart[title].nil? || replaced

  puts 'Введите цену товара'
  price = gets.chomp.to_f

  until price.positive?
    puts "Введите цену товара #{title}"
    price = gets.chomp.to_f
  end

  puts 'Введите количество товара'
  quantity = gets.chomp.to_f

  until quantity.positive?
    puts "Введите количество товара #{title}"
    quantity = gets.chomp.to_f
  end

  cart[title] = { price: price, quantity: quantity }
end

puts cart

cart.each do |title, price_quantity|
  puts "#{title} стоимость #{price_quantity.values.inject(:*)}"
end

amount = cart.map { |_title, price_quantity| price_quantity.values.inject(:*) }.sum

puts "Общая сумма покупок: #{amount}"
