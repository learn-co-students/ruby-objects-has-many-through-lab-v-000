class Artist

  attr_accessor :name
  # , :song, :genre, :songs    don't need these.... why?

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
      @songs << song
      song.artist = self
      # @songs    don't need this, have another method for calling array
  end

  def songs
    @songs
  end

  def genres
      self.songs.collect { |song| song.genre  }
  end

end
