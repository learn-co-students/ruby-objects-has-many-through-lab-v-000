class Artist
  attr_accessor :name
  attr_reader :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(new_song)
    @songs << new_song
    new_song.artist = self
    new_song.genre.artists<<self
    @genres << new_song.genre
  end

end
