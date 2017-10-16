class Genre
  attr_accessor :name, :songs, :artists

  def initialize(name)
    self.name = name
    self.songs = []
    self.artists = []
  end

end
