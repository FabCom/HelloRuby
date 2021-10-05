def start()
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "

  begin
    stages = Integer(gets.chomp)
  rescue
    puts "Il faut que tu renseignes un nombre."
  end
  if stages
    if stages < 0
      puts "Il faut un nombre positif !"
      start()
    else
      puts "Elle est pas belle cette pyramide ?!"
      stages.to_i.times do |i|
        i = i + 1
        i.times {
          print "#"
        }
        puts ""
      end
    end

  end
end

start()
