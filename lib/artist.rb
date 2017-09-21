class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    name.artist = self
    @songs << name
  end

  def genres
    songs.collect do |song|
      song.genre
    end
  end
end
