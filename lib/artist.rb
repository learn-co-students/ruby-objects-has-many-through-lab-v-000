class Artist
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    if song.class == Song
      self.songs << song
      song.artist = self
    else
      "This is not a song object."
    end
  end

  def genres
    songs.collect { |song| song.genre }
  end

end
