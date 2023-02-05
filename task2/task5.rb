# frozen_string_literal: true

# 3 nums

def input_day
  puts 'input a num of days:'
  num = gets.to_i
  unless num.positive? && num <= 31
    puts 'incorrect day, please, input again'
    num = input_day
  end

  num
end

def input_month
  puts 'input a num of month:'
  num = gets.to_i
  unless num.positive? && num <= 12
    puts 'incorrect month, please, input again'
    num = input_nums
  end

  num
end

def input_year
  puts 'input a num of years:'
  num = gets.to_i
  unless num.positive?
    puts 'incorrect year, please, input again'
    num = input_nums
  end

  num
end

def leap_year?(year)
  return true if ((year % 400).zero? || year % 100 != 0) && (year % 4).zero?

  false
end

def spec_check(day, month_arr, month)
  while day > month_arr[month - 1]
    puts 'founded incorrect number of days for ur month! Lets change it!'
    day = input_day
  end

  day
end

def result_counting(day, month, year, month_arr)
  result = day
  (0..month - 2).each { |i| result += month_arr[i] }
  puts "#{result} days of #{year} year"
end

def main
  month_arr = [31, 28, 31, 30, 31, 30, 31, 30, 31, 30, 31, 30]
  day = input_day
  month = input_month
  year = input_year
  month_arr[1] += 1 if leap_year?(year)
  day = spec_check(day, month_arr, month)
  result_counting(day, month, year, month_arr)
end

main
