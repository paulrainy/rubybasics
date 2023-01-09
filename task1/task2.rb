# frozen_string_literal: true

# triangle area

def main
  puts 'input a base of the triangle:'
  a = gets.to_i
  puts 'input a height of the triangle:'
  h = gets.to_i
  s = 0.5 * a * h
  if s.positive?
    puts "the area of triangle is #{s}"
  else
    puts "it's not a triangle dude!"
  end
end

main
