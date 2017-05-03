class Genre

  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @artists = []
    @songs = []
  end

  def add(song)
    @songs << song
    song.genre = self
    @artists << song.artist
  end




end
