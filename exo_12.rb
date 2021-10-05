def start()
  puts "Quelle est ton année de naissance ?"
  print ">"
  begin
    year_of_birth = Integer(gets.chomp)
  rescue
    puts "Ce n'est pas un nombre entier pouvant correspondre à une année"
    start()
  end
  if year_of_birth
    puts "En " + year_of_birth.to_s + ", tu débarquais dans ce monde."
    i = 0
    while year_of_birth + i < Time.now.year - 1
      i = i + 1
      year = year_of_birth + i
      age = year - year_of_birth
      many_years = Time.now.year - year
      if many_years == age
        puts "Il y a #{many_years.to_s} ans, tu avais la moitié de l'âge que tu as aujourd'hui ;-)"
      else
        puts "Il y a " + many_years.to_s + " ans, tu avais " + age.to_s + " ans."
      end
    end
      age = Time.now.year - year_of_birth
      puts "Cette année, " + "tu as " + age.to_s + " ans."
  end
end

start()
