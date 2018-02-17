class Genre


  attr_accessor :name, :artist, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def artists
    @songs.collect do |i|
      i.artist
    end
  end

  def songs
    @songs
  end
end
