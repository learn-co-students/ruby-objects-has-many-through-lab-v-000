class Artist

  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    if(!song.genre.artists.include?(self))
      song.genre.artists << self
    end
    @genres << song.genre
    @songs << song
  end

end
