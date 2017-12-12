input_array = File.read('../inputs/day1.txt').each_char.map {|c| c.to_i}

result = input_array.push(input_array.first) # To create a "circular array" we push the first element at the end
           .chunk_while {|i, j| i == j} # Group element by sequence
           .flat_map {|a| a.drop(1)} # Drop the first element which are not to be added together
           .reduce(&:+) # Add the result

puts result