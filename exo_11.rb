def repeatSentence(sentence, number)
  number.times {
    puts sentence
  }
end

def start()
  puts "Salut, donnes un chiffre ?"
  print ">"
  begin
    number = Integer(gets.chomp)
  rescue
    puts "Ce n'est pas un chiffre entier"
    start()
  end
  if number.to_i >= 10
    puts "Ce n'est pas un chiffre, c'est un nombre !"
    start()
  elsif number.to_i <= 0
    puts "On t'a demandé un chiffre, là tu es parti dans les chiffres négatifs !"
    start()
  else
    repeatSentence("Salut ça farte ?", number.to_i)
  end
end

start()
