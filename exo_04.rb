def CalcAge_HundredYears (year)
  age = year.to_i + 100
  return age.to_s
end


def start()
  puts "Salut, tu es né·e en quelle année ?"
  print ">"
  begin
    year = Integer(gets.chomp)
  rescue
    puts "Ce n'est pas un nombre entier pouvant correspondre à une année"
    start()
  end
  if year
    puts "Tu auras 100 ans en " + CalcAge_HundredYears(year) + "."
  end
end

start()
