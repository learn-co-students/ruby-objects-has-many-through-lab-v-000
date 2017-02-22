class Genre

  attr_accessor :song, :artist, :songs, :name, :genre

  def initialize(name)
    @name = name
    @songs = []
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
