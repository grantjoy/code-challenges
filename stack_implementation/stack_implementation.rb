File.open(ARGV[0]).each_line do |line|
  next if line.empty?
  stack = []
  line.split(' ').each do |item|
    stack << item
  end
  result = []
  stack.reverse.each_with_index do |item, i|
    result << item if i.even?
  end
  puts result.join ' '
end