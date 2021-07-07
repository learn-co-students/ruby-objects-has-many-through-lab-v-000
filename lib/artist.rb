
class Artist
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(title)
    @songs << title
    title.artist = self
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end
