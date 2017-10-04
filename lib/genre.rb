class Genre
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_obj)
    self.songs << song_obj
  end

  def artists
    self.songs.collect{|s| s.artist}
  end
end
