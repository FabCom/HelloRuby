def repeatSentence(sentence, number)
  number = number - 1
  number.times {
    puts sentence
  }
end

def start()
  puts "Salut, donnes un nombre ?"
  print ">"
  begin
    number = Integer(gets.chomp)
  rescue
    puts "Ce n'est pas un nombre"
    start()
  end
  if number
    if number.to_i <= 0
      puts "Tu peux donner un nombre positif s'il-te-plaît !"
      start()
    else
      repeatSentence("Bonjour toi !", number.to_i)
    end
  end
end

start()
