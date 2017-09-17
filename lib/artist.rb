class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(title)
    songs << title
    title.artist = self
  end

  def genres
    songs.collect {|song| song.genre}
  end
end
