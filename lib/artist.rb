class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end
  def add_song(song)
    @songs<<song
    song.artist = self unless song.artist==self
  end
  def songs
    @songs.dup.freeze
  end
  def genres
    @songs.collect {|song|
      song.genre
    }
  end
end
