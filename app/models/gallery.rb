class Gallery
  @@all =[]
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all <<self
  end

  def self.all
    @@all
  end 
  def paintings
    Painting.all.select{|painting_ist|painting_ist.gallery == self}
  end  
  def artists
    self.paintings.map{|painting_ist|painting_ist.artist}#.uniq if you would like a unique list
  end  
  def artist_names
      self.artists.map(&:name)
  end  
  def most_expensive_painting
    self.paintings.max{|painting_ist1, painting_ist2|painting_ist1.price <=> painting_ist2.price}
  end 
    # * Returns an `instance` of the most expensive painting in a gallery
   

end



# * `Gallery.all`
# * Returns an `array` of all the galleries

# * `Gallery#paintings`
# * Returns an `array` of all paintings in a gallery

# * `Gallery#artists`
# * Returns an `array` of all artists that have a painting in a gallery

# * `Gallery#artist_names`
# * Returns an `array` of the names of all artists that have a painting in a gallery

# * `Gallery#most_expensive_painting`
# * Returns an `instance` of the most expensive painting in a gallery