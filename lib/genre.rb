require "pry"

class Genre

  attr_reader :name, :songs, :artists

  def initialize name
    @name = name
    @songs = []
    @artists = []
  end

end
