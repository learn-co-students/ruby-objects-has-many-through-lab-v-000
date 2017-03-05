class Genre
attr_reader :name #try changing this back to just a reader not attr_accessor

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self #self here is the "Hip-Hop" in Genre.new("Hip-Hop"). I think.
  end

  def artists
    self.songs.collect {|song| song.artist}
  end

  def songs
    @songs
  end

end
