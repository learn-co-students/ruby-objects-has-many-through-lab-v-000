class Artist

  attr_accessor :songs
  attr_reader :name, :genres

  def initialize(name) #initializes with a name and an empty collection of songs
    @name = name #name has a name
    @songs = []
  end

  def add_song(song) #adds a new song to the artist's @songs array and tells that song that it belongs to the artist
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
