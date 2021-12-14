# Fibonacci

arr = [0, 1]

loop do
  i = arr.last(2).sum

  break if i >= 100

  arr << i
end

puts arr
