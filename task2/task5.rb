# frozen_string_literal: true

# 3 nums

def rewriting_date(num_arr, count)
  puts 'incorrect num, input a num again'
  num_arr[count] = nil
  num_arr[count] = gets.to_i
  num_arr
end

def check_correct_date(num_arr, count)
  case count
  when 0
    num_arr = rewriting_date(num_arr, count) until num_arr[count] <= 31 && num_arr[count] >= 1
  when 1
    num_arr = rewriting_date(num_arr, count) until num_arr[count] <= 12 && num_arr[count] >= 1
  when 2
    num_arr = rewriting_date(num_arr, count) until num_arr[count] >= 1
  end
  num_arr
end

def spec_check(num_arr, month_hash)
  max_days = if num_arr[1] == 2 && leap_year?(num_arr)
               29
             else
               month_hash.fetch(num_arr[1])
             end
  while num_arr[0] > max_days
    puts 'incorrect number of days in the month!'
    num_arr = rewriting_date(num_arr, 0)
  end
  num_arr
end

def fill_arr(num_arr)
  count = 0
  puts 'input day, month and year in each own string'
  while num_arr.size < 3
    num_arr << gets.to_i
    num_arr = check_correct_date(num_arr, count)
    count += 1
  end
  num_arr
end

def leap_year?(num_arr)
  return true if (num_arr[2] % 4).zero? && (num_arr[2] % 100).zero? && (num_arr[2] % 400).zero?
  return true if (num_arr[2] % 4).zero? && (num_arr[2] % 100).positive?

  false
end

def counting_day(num_arr, month_hash)
  return num_arr[0] if num_arr[1] == 1

  answer = 0
  month_hash.each_pair do |month, days|
    break if month == num_arr[1]

    answer += days
  end
  answer += 1 if leap_year?(num_arr)
  answer + num_arr[0]
end

def main
  num_arr = []
  month_hash = { 1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 30, 9 => 31, 10 => 30, 11 => 31,
                 12 => 30 }
  num_arr = fill_arr(num_arr)
  num_arr = spec_check(num_arr, month_hash)
  puts num_arr
  puts leap_year?(num_arr)
  puts "#{counting_day(num_arr, month_hash)} days of #{num_arr[2]} year"
end

main
