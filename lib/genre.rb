class Genre
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @songs.map{|song| song.artist}
  end

end
