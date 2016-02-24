class Genre
  attr_accessor :name, :songs

  def initialize(name, songs = [])
    @name = name
    @songs = songs
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

end