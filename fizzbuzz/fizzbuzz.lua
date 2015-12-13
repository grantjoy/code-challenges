function fizzbuzz(d1, d2, n)
  for i = 1, n, 1 do
    if i % d1 == 0 or i % d2 == 0 then
      if i % d1 == 0 then
        io.write("F")
      end
      if i % d2 == 0 then
        io.write("B")
      end
    else
      io.write(i)
    end
    io.write(' ')
  end
  io.write('\n')
end

for line in io.lines(arg[1]) do
  fizzbuzz(line:match("(%d+) (%d+) (%d+)"))
end
