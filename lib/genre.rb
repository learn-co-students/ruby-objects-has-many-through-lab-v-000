class Genre
  attr_accessor :name
  #don't have attr for song or artist. we have songs collection, reader, and artists method

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end


  def artists
    @songs.collect do |song|
      song.artist
    end
  end


end
