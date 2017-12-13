input = File.read('../inputs/day2.txt')

result = 0
input.each_line do |line|
  line_split = line.split(" ").map(&:to_i)
  result += (line_split.max - line_split.min)
end

puts result