class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

tundra = Puppy.new
tundra.fetch("ball")

