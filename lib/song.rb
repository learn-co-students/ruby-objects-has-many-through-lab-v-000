
class Song
  attr_accessor :artist, :genre

  def initialize(name, genre) #song_instance
    @name = name
    @genre = genre
    @genre.add_song(self)
  end


end
