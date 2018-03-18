class Genre
  attr_accessor :name, :artists, :songs

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  # def add_song(song)
  #   @songs << song
  #   song.artist = self
  # end
end
