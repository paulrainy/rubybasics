# frozen_string_literal: true

# array +5 to 100

def main
  array = []
  num = 10
  while array.last != 100
    array << num
    num += 5
  end
  puts array
end

main
