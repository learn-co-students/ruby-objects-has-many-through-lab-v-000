require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

  # def waiters
  #     meals.map do |meal|
  #       meal.waiter
  #     end
  #   end
  #
  # def meals
  #   Meal.all.select do |meal|
  #     meal.customer == self
  #   end
  # end
end
