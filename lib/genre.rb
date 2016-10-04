class Genre
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song #Adds the song to the songs array of Class Genre
  end

  def artists #Iterates over the songs array of instance of Class Genre, and collects artist from each song
    self.songs.collect {|song| song.artist}
  end
end
