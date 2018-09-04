class Genre
  attr_accessor :name, :genre
  
  @@all = []
  
  def initialize(name, genre)
    @name = name
    @genre = genre
    @@all << self
  end
end