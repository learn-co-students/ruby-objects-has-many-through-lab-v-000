class Genre
  attr_reader :name
  attr_accessor :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end