class Artist
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song_obj)
    self.songs << song_obj
    song_obj.artist = self
  end

  def genres
    self.songs.collect{|s| s.genre}
  end
end
