# Song
#   #new
#     initializes with a name and a genre
#   #genre
#     belongs to a genre
#   #artist
#     belongs to a artist


class Song
  attr_accessor :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
#
#
#
#
end
