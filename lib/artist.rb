class Artist
  attr_accessor :name, :songs
    @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def new_song(song)
    @songs << song
    #@genre = genre
    song.artist = self
  end

  def genre
    self.songs.collect {|song| song.genre}
  end

end
