# frozen_string_literal: true

# array +5 to 100

def main
  puts (10..100).step(5).map(&:to_i)
end

main
