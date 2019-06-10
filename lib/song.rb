class Song
  attr_accessor :name, :artist, :genre

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

  # def genre
  #
  # end

  # def waiters
  #   meals.map do |meal|
  #     meal.waiter
  #   end
  # end
end
