class Genre
  attr_accessor :songs, :artists
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

end
