# frozen_string_literal: true

# triangle type check

def equal_check(a, b, c)
  if a == b && b == c
    puts "it's an equilateral triangle!"
  end

  if a == b || b == c || a == c
    puts "it's an isosceles triangle!"
  end
end

def versatile_check(a, b, c)
  if a != b && b != c && a != c
    puts "it's just a versatile triangle :("
  end
end

def main
  puts "let's check ur triangle!"

  puts "input side A:"
  a = gets.to_f
  puts "input side B:"
  b = gets.to_f
  puts "input side C:"
  c = gets.to_f

  g = [a, b, c].max

  case g

  when a
    if a * a == b * b + c * c
      puts "hypotenuse is A"
      puts "it's a right triangle!"
      equal_check(a, b, c)
    elsif a >= b + c
      puts "it's not a triangle!"
    else
      equal_check(a, b, c)
      versatile_check(a, b, c)
    end

  when b
    if b * b == a * a + c * c
      puts "hypotenuse is B"
      puts "it's a right triangle!"
      equal_check(a, b, c)
    elsif b >= a + c
      puts "it's not a triangle!"
    else
      equal_check(a, b, c)
      versatile_check(a, b, c)
    end

  when c
    if c * c == b * b + a * a
      puts "hypotenuse is C"
      puts "it's a right triangle!"
      equal_check(a, b, c)
    elsif c >= b + a
      puts "it's not a triangle!"
    else
      equal_check(a, b, c)
      versatile_check(a, b, c)
    end

  else
    puts "test"
    # this else isn't working idk why
  end
end

main
