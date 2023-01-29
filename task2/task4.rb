# frozen_string_literal: true

# has with letters

def main
  hash_letters = {}
  num = 1
  arr_letters = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  arr_letters.each do |letter|
    hash_letters.store(letter, num)
    num += 1
  end
  vowel_hash_letters = hash_letters.select { |key| %w[a e i o u y].include?(key) }
  vowel_hash_letters.each_pair { |letter, number| puts "#{letter} is #{number}" }
end

main
