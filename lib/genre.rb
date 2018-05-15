class Genre
  attr_accessor :name, :songs, :artists
  def initialize(name)
    @name = name
    @songs = [] #through concept. the song themselves have artists that each can be accessed.
    @artists = [] #this was needed for the method
  end

  def songs
    @songs
  end

  def artists
    @artists
  end
end
