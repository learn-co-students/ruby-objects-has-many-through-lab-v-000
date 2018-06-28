class Song
  attr_accessor :name, :genre, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    self.name = name
    self.class.all << self
  end
end
