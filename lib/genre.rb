class Genre
  attr_accessor :songs, :name, :song

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.genre = self
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    @songs.collect do |instance|
      instance.artist
    end
  end

end
