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
    puts year_of_birth
    i = 0
    while year_of_birth + i < Time.now.year
      i = i + 1
      puts year_of_birth + i
    end
  end
end

start()
