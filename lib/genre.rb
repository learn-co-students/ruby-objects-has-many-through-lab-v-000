class Genre
  attr_accessor :name, :artists, :songs

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end
end
