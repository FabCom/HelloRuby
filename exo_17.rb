def listof_n_oddnumber(n)
  a=[]
  (n + n).times do |i|
    if i.odd? == true
      a.push(i)
    end
  end
  return a
end

def drawstage(stages , stage)
  nplain = listof_n_oddnumber(stages)[stage]
  nblank = stages - stage
  plain = ""
  blank = ""
  nplain.times do
    plain = plain + "#"
  end
  nblank.times do
    blank = blank + " "
  end
  return blank + plain
end

def start()
  puts "Salut, tu vas construire une super pyramide ! Combien d'étages veux-tu ?"
  print ">"

  begin
    stages = Integer(gets.chomp)
  rescue
    puts "Il faut que tu renseignes un nombre."
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
      pyramid = Array.new
      stages.times do |stage|
        pyramid[stage] = drawstage(stages, stage)
      end
      puts pyramid
    end

  end
end

start()
