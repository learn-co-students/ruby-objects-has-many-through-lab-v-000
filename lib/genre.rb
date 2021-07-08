class Genre

  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

  def add_song(song)
    @songs.include?(song) ? nil : @songs << song
  end

end
