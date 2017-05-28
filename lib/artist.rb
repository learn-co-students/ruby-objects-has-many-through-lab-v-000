#build Artist class and initialize with name and empty array of songs

class Artist

  attr_accessor :name, :songs, :song, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  #adds song to artists collection
  def add_song(song)
    song.artist = self
    @songs << song
  end

  #returns artists song collections
  def songs
    @songs
  end

  #collects genre of each song
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end
