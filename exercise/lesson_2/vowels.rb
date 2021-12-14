# Vowels

vowels_hash = ('a'..'z').each_with_object({}).with_index do |(letter, hash), index|
  hash[letter] = index + 1 if 'aeiouy'.include?(letter)
end

puts vowels_hash
