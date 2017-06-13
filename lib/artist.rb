class Artist

  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @genres << song.genre if !@genres.detect(song.genre)
    song.genre.add_song(song) 
  end

  def genres
    self.songs.collect {|x| x.genre}
  end

end
