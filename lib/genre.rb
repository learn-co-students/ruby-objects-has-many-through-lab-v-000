class Genre
  attr_accessor :name

  @@all = []

  def intialize(name)
    @name = name
    @@all << self
end

def self.all
   @@all
 end

 def songs
   Song.all.select do |song|
     song.genre
   end
 end

 def artists
   song.map do |song|
     song.artist
   end
 end
 end
