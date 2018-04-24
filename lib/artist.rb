class Artist
    attr_accessor :name
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        @songs
    end

    def add_song(name, genre)
        song = Song.new(name, genre)
        @songs << song
    end

    def genres
        self.song.collect {|song| song.genre}
    end

end

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end
