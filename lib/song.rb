class Song
  attr_accessor :name, :genre, :artist
  @@all = []

  def initialize(name, genre, artist)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self
  end

  # ninety_nine_problems = Song.new("99 Problems", jay_z, rap)

  def self.all
    @@all
  end

end
