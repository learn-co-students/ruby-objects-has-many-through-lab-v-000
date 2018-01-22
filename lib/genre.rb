class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def artists
    artists = []
    self.songs.each do |song|
      artists << song.artist
    end
    artists
  end

end
