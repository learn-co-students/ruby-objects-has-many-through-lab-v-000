class Artist
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_instance)
    songs << song_instance
    song_instance.artist = self
  end

  def genres
    songs.map {|song| song.genre}
  end
end
