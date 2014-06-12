def calculate()
  puts "Enter a number, followed by the Return/Enter key."
  input=gets.to_f
  if input == 42.0
    puts "You're exactly there."
  elsif input > 42.0
    puts "You need to subtract #{input-42.0}."
  elsif input < 42
    if input == 0.0
      puts "Your input was interpreted as 0. If this is not what you entered, make sure you use digits in base 10 with nothing prepended."
    end
    puts "You need to add #{42.0-input}."
  end
end

puts "Welcome! This program will tell you what you need to do to get from a number to The Answer to the Ultimate Question of Life, The Universe, and Everything."
run=true
while true do
  calculate if run
  print "Would you like to calculate again? [y/n] "
  answer=gets[0]
  if answer == "y"
    run=true
    next
  elsif answer == "n"
    puts "Thank you for using the Answer calculator!"
    exit
  else
    run=false
  end
end
