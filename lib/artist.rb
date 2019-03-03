class Artist
  attr_accessor :name, :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @@all << self #<---usually replaced with a #SAVE <---best way
  end

  def self.all
    @@all
  end

  def new_song(name, genre) #creates NEW SONG associated with that ARTIST
    Song.new(name, self, genre)
  end

  def songs #HAS MANY songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres #HAS MANY genres, THROUGH songs
    songs.collect do |song|
      song.genre
    end
  end

end #<----- CLASS end
