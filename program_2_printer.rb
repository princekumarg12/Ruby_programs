def printer(n)
  (1..n).each do |i|
    if (i % 3 == 0 && i % 5 == 0)
      puts "Presto Apps"
    elsif i % 3 == 0
      puts "Presto"
    elsif i % 5 == 0
      puts "Apps"
    else
      puts i
    end
  end
end

p printer(6)
