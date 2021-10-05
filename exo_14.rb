def start()
  list_email = Array.new

  i = 0
  50.times do |i|
    i = i + 1
    if i > 0 && i < 10
      list_email.push("jean.dupont.0#{i}@email.fr")
    else
      list_email.push("jean.dupont.#{i}@email.fr")
    end

  end

  list_email.each do |j|
    decompose_j = j.split(".")
    number = decompose_j[2][0, 2]
    if number.to_i.even?
     puts j
    end
  end
end

start()
