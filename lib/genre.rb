class Genre
  attr_accessor :name, :artist, :song

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    @songs << song

  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end

  def songs
    @songs
  end

end
