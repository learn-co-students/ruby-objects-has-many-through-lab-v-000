class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

end
