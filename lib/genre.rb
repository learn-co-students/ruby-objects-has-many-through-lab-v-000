class Genre
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def songs
    binding.pry
    @songs
  end

end
