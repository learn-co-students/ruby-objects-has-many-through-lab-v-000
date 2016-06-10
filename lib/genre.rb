class Genre
  attr_accessor :name

    def initialize(name)
      @name = name
      @songs = []
    end

    def songs
      @songs
    end

    def add_song(song)
      self.songs << song
    end

    def artists
      songs.collect { |s| s.artist}
    end

end
