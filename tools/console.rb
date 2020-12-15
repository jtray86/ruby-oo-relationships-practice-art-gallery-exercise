require_relative '../config/environment.rb'




gallery1 = Gallery.new("Fine Art", "New York")
gallery2 = Gallery.new("The little Gallery", "Savannah")

artist1 = Artist.new("Amilia", 20)
artist2 = Artist.new("Rory", 15)

paint1 = Painting.new("River's in moonlight", 50000, artist1, gallery1)
paint2 = Painting.new("Landscape: The apple", 25000, artist2, gallery2)
paint3 = Painting.new("Landscape: The Banana", 15000, artist2, gallery2)



binding.pry

puts "Bob Ross rules."
