class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect do |g|
      g.artist
    end
  end

end