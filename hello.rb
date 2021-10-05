# Page de test
puts "GIMME A NUMBER B-TWEEN 1 & 25"

floors = gets.chomp.to_i
iterator = 1
floor_stage = "#"
pyramid = Array.new

25.times do
  pyramid.push("#")
end
plain_wall = pyramid.join
# puts plain_wall


while iterator <= floors
  puts plain_wall[0, iterator]
  iterator = iterator + 1
end
