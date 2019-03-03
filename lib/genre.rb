class Genre
  attr_accessor :name, :songs, :artists
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs #HAS MANY songs
    Song.all.select { |song| song.genre == self }
    #grab all the SONG OBJECTS that their genres match to the one being called on
  end

  def artists #HAS MANY artists, THROUGH songs
    songs.collect { |song| song.artist }
    #refer to the #SONGS method which pulls relevent songs to the genre
    #and return the relevent ARTISTs
  end

end #<---- CLASS end
