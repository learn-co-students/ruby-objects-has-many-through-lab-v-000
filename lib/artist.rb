require "pry"

class Artist

attr_accessor :name, :genre

@@all = []

  def initialize(name)
  @name = name
  @genre = genre
  self.save
  end

  # def self.create
  #   new_variable = Artist.new(@name)
  #   new_variable.save
  #   new_variable
  # end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def songs
    # binding.pry
    Song.all.select {|song| song.artist == self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end

  end

end
