class Artist

  attr_accessor :name, :songs

  def initialize(name, songs=[])
    @name=name
    @songs=songs
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
