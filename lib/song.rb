# first attempt 6/27/17
# class Song
#   attr_accessor :name, :artist, :genre
#
#   def initialize(name, genre)
#     @name = name
#     @genre = genre
#     genre.add_song(self)
#   end
#
# end
class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self) #unless genre.songs.include?(self)
  end
end
