class Genre
  attr_accessor :name, :songs, :artist, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end

end
