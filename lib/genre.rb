class Genre
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_instance)
    songs << song_instance
    song_instance.genre = self
  end

  def artists
    songs.map {|song| song.artist}
  end
end
