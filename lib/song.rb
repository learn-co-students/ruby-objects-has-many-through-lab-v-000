require "pry"

class Song

attr_accessor :name, :artist, :genre

@@all = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  self.save
  # binding.pry
end

# def self.create
# new_variable = Song.new(@name)
# new_variable.save
# new_variable
# end

  def self.all
    @@all
  end

  def save
  @@all << self
  end


end
