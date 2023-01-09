# frozen_string_literal: true

# triangle type check

def equilateral?(sides)
  sides.first == sides.last
end

def isosceles?(sides)
  sides.uniq.size <= 2
end

def exists?(sides)
  sides.last < sides.first + sides[1]
end

def right?(sides)
  sides.last**2 == sides.first**2 + sides[1]**2
end

def user_input
  input = []
  puts "let's check ur triangle!"
  puts 'input side A:'
  input << gets.to_f
  puts 'input side B:'
  input << gets.to_f
  puts 'input side C:'
  input << gets.to_f

  input
end

def main
  sides = user_input.sort

  return "it's not a triangle" unless exists?(sides)

  return "it's a right triangle!" if right?(sides)

  message = ''

  message += "it's an isosceles triangle!" if isosceles?(sides)
  message += "\nit's an equilateral triangle!" if equilateral?(sides)

  message.strip
end

puts main
