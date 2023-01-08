# frozen_string_literal: true

# perfect weight check
# my opinion: idk i dont see any logic in the task

def main
  puts "input your name:"
  person_name = gets
  puts "input your height:"
  person_height = gets.to_i
  person_perfect_weight = (person_height - 110) * 1.15

  if person_perfect_weight < 0
    puts "#{person_name}, your weight is already perfect!"
  else
    puts "#{person_name}, your perfect weight is #{person_perfect_weight} kg"
  end
end

main
