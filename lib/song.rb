# //The Song model:
# // 1)The Song class needs a class variable @@all that begins as an empty array.

class Song
  attr_accessor :name, :artist, :genre

  @@all = []

#2) A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

#)The Song class needs a class method .all that lists each song in the class variable.

def self.all
  @@all 
end

end  

