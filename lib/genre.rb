class Genre
  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @artists = []
    @songs = []
  end

  def add_song(song)
    @songs << song
    #@artists << song.artist
    song.genre = self
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

end
