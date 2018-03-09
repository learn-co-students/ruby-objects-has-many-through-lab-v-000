class Genre
    attr_accessor :name, :songs, :artist

  def initialize(name)
    @songs = []
    @name = name
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
