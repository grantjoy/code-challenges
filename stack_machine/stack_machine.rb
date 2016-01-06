def solution(s)
  stack = []
  s.chars().each do |char|
    if char.match /^\d$/
      stack.push char.to_i
    else
      stack.push eval(stack.pop.to_s+char+stack.pop.to_s)
    end
  end
  stack.first
end

result = solution '13+62*7+*'
p result