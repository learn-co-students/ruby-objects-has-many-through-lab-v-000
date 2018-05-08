class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def adds_song(song)
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
