class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end


  def speak(woofs)
  	woofs.times do |x|
  		puts "woof"
  	end
  end

end

tundra = Puppy.new

tundra.speak(3)

tundra.fetch("ball")