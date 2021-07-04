class Artist
  attr_accessor :name, :songs, :genres
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    song
  end
  
  def genres()
    @songs.each do |song|
      @genres << song.genre
    end
    @genres.uniq
  end
  
end