# frozen_string_literal: true

# discriminant

def main
  puts "let's find a discriminant!"
  puts "input a:"
  a = gets.to_f
  puts "input b:"
  b = gets.to_f
  puts "input c:"
  c = gets.to_f

  d = b * b - 4 * a * c

  if a == 0 && b == 0 && c==0
    puts "it's not an equation!"

  elsif a == 0 && b == 0
    puts "it's not an equation!"

  elsif a == 0
    x = c / b
    puts "ur root: x = #{x}"

  elsif d > 0
    x1 = (-b + Math.sqrt(d)) / 2 * a
    x2 = (-b - Math.sqrt(d)) / 2 * a
    puts "ur roots: x1 = #{x1}, x2 = #{x2}"

  elsif d == 0
    x = -b / 2 * a
    puts "ur root: x = #{x}"

  elsif d < 0
    puts "ur roots are complex!"

  else
    puts "impossible!"

  end
end

main
