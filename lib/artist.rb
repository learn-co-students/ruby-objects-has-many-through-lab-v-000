class Artist
attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    @songs<< title
    title.artist = self
  end

  def songs
    @songs
  end

def genres
  @songs.collect do |song|
    song.genre
  end
end
end
