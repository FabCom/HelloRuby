def CalcAge_Now (year)
  age = Time.now.year - year.to_i
  return age.to_s
end

def CalcAge_Date (date, year)
  age = date - year.to_i
  return age.to_s
end

def start()
  puts "Salut, tu es né·e en quelle année ?"
  print ">"
  begin
    year = Integer(gets.chomp)
  rescue
    puts "Ce n'est pas un nombre entier pouvant correspondre à une année !"
    start()
  end
  if year
    puts "En 2017, tu avais " + CalcAge_Date(date=2017, year) + " ans."
    puts "Et aujourd'hui, quel bel âge... " + CalcAge_Now(year) + " ans."
  end
end

start()

#Test
