class Artist
attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self #tells song it belongs to that artist
  end

  def genres
    self.songs.collect {|song| #iterate over artist songs and collect genre of each song
      song.genre
    }
  end

end
