class Genre
  # attr_reader :name
  attr_accessor :name
  #, :songs, :song, :artist don't need....why?

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    # song.genre = self    don't need this
    # @songs
  end

  def songs
    @songs
  end

  def artists
      @songs.collect { |song| song.artist  }
  end

end
