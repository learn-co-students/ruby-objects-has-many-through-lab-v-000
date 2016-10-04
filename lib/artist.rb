class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song # Adds song to the artist instance
    song.artist = self # Assigns itself as artist to an instance of Class Song
  end

  def genres #Iterates over the songs array of instance of Class Artist, and collects genre from each song
    self.songs.collect {|song| song.genre}
  end
end
