class Artist
  attr_reader :name, :songs
  attr_accessor :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    song.add_artist(self)
  end

end
