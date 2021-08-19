require 'citrus'
Citrus.load 'calc'

loop do
  puts Calc.parse('1 + 2 + 3').value
end