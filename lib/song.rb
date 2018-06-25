# class Song
#
#   attr_accessor :name, :artist, :genre
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @artist = artist
#     @genre = genre
#     @@all << self
#   end
#
#   def self.all
#     @@all
#   end
#
# end

class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
end
