class Genre

  attr_reader :name
  attr_accessor :song

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
    @songs.collect {|song| song.artist}
  end

end
