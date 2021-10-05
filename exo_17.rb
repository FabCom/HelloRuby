def start()
  puts "Salut, tu vas construire une super pyramide ! Combien d'étages veux-tu ?"
  print ">"

  begin
    stages = Integer(gets.chomp)
  rescue
    puts "Il faut que tu renseigne un nombre."
  end
  if stages
    if stages < 0
      puts "Il faut un nombre positif !"
      start()
    elsif stages == 0
      puts "Pas d'étage / pas de pyramide !"
      start()
    elsif stages > 25
      puts "Attention à la folie des grandeurs ! Pas plus de 25 étages s'il-te-plaît."
      start()
    else
      stages = stages.to_i
      puts "Elle est pas belle cette pyramide ?!"
      blocs = 0
      stages.times do |i|
        stage = stages - i - 1
        if blocs == 0
          blocs = 1
        else
          blocs = blocs + 2
        end
        stage.times {
            print " "
          }
          blocs.times {
            print "#"
          }
        puts ""
      end
    end

  end
end

start()
