def start()
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print ">"

  begin
    stage = Integer(gets.chomp)
  rescue
    puts "Il faut que tu renseigne un nombre."
  end
  if stage
    if stage < 0
      puts "Il faut un nombre positif !"
      start()
    else
      length = stage.to_i
      puts "Elle est pas belle cette pyramide ?!"
      length.times do |i|
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
