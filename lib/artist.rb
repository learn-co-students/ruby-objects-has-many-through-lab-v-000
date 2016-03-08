class Artist
  attr_accessor :name, :songs
  def initialize(name)
    @songs = []
    # @genre = genre
    @name = name
  end
  def add_song(song)
    @songs << song
    song.artist = self
  end
  def songs 
    @songs
  end
  def genres 
    songs.collect do |song|
      song.genre
    end
  end
end
