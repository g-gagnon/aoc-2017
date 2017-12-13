require 'benchmark'


input_array = File.read('../inputs/day1.txt').each_char.map {|c| c.to_i}

# Second version, 5-6 times faster. For some reason array are naturally circular in ruby 2.4.2

input_array = File.read('../inputs/day1.txt').each_char.map {|c| c.to_i}
result = 0

input_array.each_with_index do |input, index|
  input_array_size = input_array.size
  lookup_index = (index + input_array_size / 2) % input_array_size # Half the distance of the array
  result += input if input == input_array[lookup_index]
end

puts result

