class Artist

attr_accessor :name, :songs, :song, :genre, :genres

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect do |s|
      s.genre
    end
  end

end
