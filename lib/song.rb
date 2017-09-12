require 'pry'

class Song

  attr_accessor :genre, :name, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end

end
