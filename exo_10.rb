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
      puts "En " + year.to_s + ", tu avais " + i.to_s + " ans."
    end
      age = Time.now.year - year_of_birth
      puts "Cette année, " + "tu as " + age.to_s + " ans."
  end
end

start()
