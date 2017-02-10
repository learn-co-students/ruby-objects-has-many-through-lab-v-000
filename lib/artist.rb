class Artist
  attr_accessor :name
  attr_reader :songs, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(new_song)
    @songs << new_song
    new_song.artist = self
  end

  def genres
    self.songs.collect do |x|
      x.genre
    end
  end

end
