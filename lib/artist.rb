class Artist

  attr_accessor :songs, :name
  def initialize(name)
    @songs = []
    @name = name  
  end
  
  def add_song(song)
       
    unless @songs.any? { |saved_song| saved_song == song }
      @songs << song
      song.artist = self
    end

  end

  def genres
    @songs.collect { |song| song.genre  }
  end
  
end