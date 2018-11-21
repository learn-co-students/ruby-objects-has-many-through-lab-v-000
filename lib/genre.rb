class Genre

  attr_accessor :name, :songs, :artists

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    self.artists = []
    @@all << self
  end

  def self.all
    @@all
  end
end
