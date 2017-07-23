class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs.dup.freeze
  end

  def add_song(song)
    raise TypeError unless song.is_a? Song
    @songs << song
    song.genre = self unless song.genre == self
  end

  def artists
    self.songs.map {|song| song.artist}
  end
end
