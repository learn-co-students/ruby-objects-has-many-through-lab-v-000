class Genre

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name, :artists, :songs

  def initialize(name)
    @artists = []
    @songs = []
    @name = name
    @@all << self
  end

end
