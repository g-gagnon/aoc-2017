input = File.read('../inputs/day2.txt')

result = 0
input.each_line do |line|
  line_split = line.split(" ").map(&:to_i)
  result += line_split.permutation(2).find {|a, b| a % b == 0}.reduce(&:/)
end

puts result