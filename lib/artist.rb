class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_instance)
    @songs << song_instance
    song_instance.artist = self
  end

  def genres
    @songs.collect do |songs|
      songs.genre #instance genre
    end
  end

end # class closer
