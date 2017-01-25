class Tester
tester = nil
while (tester != "q" )
  tester = gets.chomp
  if tester.to_f.to_s == tester.to_s || tester.to_i.to_s == tester.to_s
     puts "test this number"
  else
    puts "test the letter"
  end
end
puts "End of Test"
end
