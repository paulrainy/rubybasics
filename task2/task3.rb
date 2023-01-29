# frozen_string_literal: true

# fibonacci to 100

def main
  fib_array = [0, 1]
  n = 0
  while fib_array[n + 1] < 100
    fib_array[2 + n] = fib_array[0 + n] + fib_array[1 + n]
    n += 1
  end
  fib_array.delete_at(fib_array.size - 1)
  puts fib_array
end

main
