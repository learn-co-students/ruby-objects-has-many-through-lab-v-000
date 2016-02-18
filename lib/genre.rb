class Genre

  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_object)
    @songs << song_object
  end

  def artists
    songs.collect { |song| song.artist }
  end

end