class Artist

  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs= []
  end

  def add_song(song)
    @songs.include?(song) ? nil : @songs << song
    song.artist = self
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
