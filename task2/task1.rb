# frozen_string_literal: true

# hash with month

def main
  list = { 'January' => 31, 'February' => 28, 'March' => 31, 'April' => 30, 'May' => 31, 'June' => 30, 'July' => 31,
           'August' => 30, 'September' => 31, 'October' => 30, 'November' => 31, 'December' => 30 }
  list.each_pair { |key, value| puts key if value == 30 }
end

main
