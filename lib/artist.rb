class Artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    songs.map do |song|
      song.genre
    end
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
  
end
