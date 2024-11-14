
def pattern_printer(n)
  (1..n).each do |i|
    puts " " * (n - i ) + "* " * i 
  end
  
  (1..n).each do |i|
    puts  " "*(i)  + "* " * (n -i)
  end
end

p pattern_printer(5)
p pattern_printer(10)
