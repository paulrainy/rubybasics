# frozen_string_literal: true

# discriminant

def eq_roots(a, b, c, d)
  coef_sum = a + b + c

  return "it's not an equation!" if coef_sum.zero? || (coef_sum == c)
  return "ur root: x = #{c / b}" if a.zero?

  if d.positive?
    "ur roots: x1 = #{(-b + Math.sqrt(d)) / 2 * a}, x2 = #{(-b - Math.sqrt(d)) / 2 * a}"
  elsif d.zero?
    "ur root: x = #{-b / 2 * a}"
  elsif d.negative?
    'ur roots are complex!'
  end
end

def main
  puts "let's find a discriminant!"
  puts 'input a:'
  a = gets.to_f
  puts 'input b:'
  b = gets.to_f
  puts 'input c:'
  c = gets.to_f
  d = b * b - 4 * a * c

  puts eq_roots(a, b, c, d)
end

main
