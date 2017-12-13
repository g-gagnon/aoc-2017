require 'benchmark'


input_array = File.read('../inputs/day1.txt').each_char.map {|c| c.to_i}
result = input_array.push(input_array.first) # To create a "circular array" we push the first element at the end
           .chunk_while {|i, j| i == j} # Group element by sequence
           .flat_map {|a| a.drop(1)} # Drop the first element which are not to be added together
           .reduce(&:+) # Add the result

puts result



# Second version, 5-6 times faster. For some reason array are naturally circular in ruby 2.4.2

input_array = File.read('../inputs/day1.txt').each_char.map {|c| c.to_i}
result = 0
input_array.push(input_array.first) # To create a "circular array" we push the first element at the end
input_array.each_with_index {|input, index| result += input if input == input_array[index + 1]}

puts result

