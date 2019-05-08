class Genre
  attr_accessor :name, :songs

  def initalize(name)
    @name = name
    @songs = []
  end

  def artists
    songs.collect {|song| song.artist}.uniq
  end

end
