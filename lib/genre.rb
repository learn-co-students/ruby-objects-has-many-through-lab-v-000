class Genre

  attr_reader :name, :songs


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs.push(song)
  end

  def artists
    @songs.collect { |song| song.artist}
  end

end
