class Song
  attr_reader :artist, :genre
  attr_accessor :name

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def say_hi
    puts 'hi'
  end
end
