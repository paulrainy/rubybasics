# frozen_string_literal: true

def input_name
  puts 'input a name of product:'
  name = gets.to_s.chomp
  while name.size < 2 || name.include?(' ')
    puts 'incorrect name, please, input again'
    name = gets.to_s.chomp
  end
  name
end

def input_nums
  num = gets.to_i
  until num.positive?
    puts 'incorrect num, please, input again'
    num = gets.to_i
  end
  num
end

def input(shop_list)
  loop do
    name = input_name
    break if name == 'stop'

    puts 'input a price of product:'
    price = input_nums
    puts 'how many products did u buy?'
    count = input_nums
    shop_list = shop_list.merge({ name => { price => count } })
  end
  shop_list
end

def main
  shop_list = {}
  final_sum = 0
  shop_list = input(shop_list)
  shop_list.each_pair do |name, hash|
    hash.each_pair do |price, count|
      puts "Product - #{name}\nPrice = #{price} Count - #{count}\n Sum = #{price * count}"
      final_sum += price * count
    end
  end
  puts "Final sum - #{final_sum}"
end

main
