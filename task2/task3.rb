# frozen_string_literal: true

# fibonacci to 100

def main
  fib_array = [0, 1]

  loop do
    latest_num = fib_array.last + fib_array[-2]
    break unless latest_num < 100

    fib_array.push latest_num
  end
  puts fib_array
end

main
