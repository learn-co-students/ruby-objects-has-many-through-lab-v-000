class Genre
  attr_accessor :name, :song, :artist

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    binding.pry
    @songs << song
    song.genre = self
  end

  def songs
    @songs
  end
end
