class Artist
  
  @@all = []
  
  attr_accessor :name, :genre
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
    # @songs << song
     song.artist = self
  end
  
  def songs
    Song.all.select {|s| s.Artist == self}
  end

  def genres 
    Song.all do |song, genre|
      genre.each.collect do |g| g.Artist == self
    end
  end
  
end