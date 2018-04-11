require 'pry'

class Song
  attr_accessor :name 
  attr_reader :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
  end



end
