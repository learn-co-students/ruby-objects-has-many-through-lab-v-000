class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_songs(song)
    @songs << song
  end

  def artists
    self.songs.collect{|song| song.artist}
  end

  




end