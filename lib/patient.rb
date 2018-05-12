class Patient
  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)

  end

  def self.all
    @@all
  end
end
