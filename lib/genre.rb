class Genre
  attr_accessor :name, :song, :artist

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
  #  binding.pry
    @songs << song
    song.genre = self
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect {|song| #iterate over songs[] and collect artist
      song.artist
    }

  end


end
