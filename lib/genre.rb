class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def artists
    self.songs.collect do |a|
      a.artist
    end
  end

end
