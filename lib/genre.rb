class Genre
  attr_accessor :songs, :name, :artists
  def initialize(name="")
    @name = name
    @songs = []
    @artists = []
  end

end
