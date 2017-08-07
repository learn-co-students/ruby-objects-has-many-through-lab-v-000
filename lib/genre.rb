class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def songs
    @songs
  end

  def add_song(song)
    songs << song
  end

  def artists
    @songs.collect {|song| song.artist}
  end
end
