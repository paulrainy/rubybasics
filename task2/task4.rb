# frozen_string_literal: true

# hash with letters

def main
  vowels_hash = {}
  vowels = %w[a e i o u y]
  ('a'..'z').each_with_index { |letter, i| vowels_hash[letter] = i if vowels.include? letter }
  vowels_hash.each_pair { |letter, number| puts "#{letter} is #{number + 1}" }
end

main
