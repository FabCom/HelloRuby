def CalcAge (year)
  age = Time.now.year - year.to_i
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
    puts "Quel bel âge " + CalcAge(year) + " ans"
  end
end

start()
