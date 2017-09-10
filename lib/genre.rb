class Genre

  attr_accessor :songs
  attr_reader :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def name
    self.genre
  end

  def songs
    @songs
  end

end
