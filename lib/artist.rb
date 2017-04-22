class Artist
  attr_accessor :songs,:name

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs << song
    song.add_artist(self)
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
