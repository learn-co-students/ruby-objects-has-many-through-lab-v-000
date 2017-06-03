class Artist

attr_accessor :name, :songs, :genres

  def initialize(name)
    self.name = name
    self.songs = []
    self.genres = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect{|song|@genres << song.genre}
    @genres
  end


end