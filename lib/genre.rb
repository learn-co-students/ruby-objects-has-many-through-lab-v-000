class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @artists = @songs.collect(&:artist)
  end

end 
