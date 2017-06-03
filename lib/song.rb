class Song
  attr_accessor :name, :artist, :genre
  def initialize(name, genre)
    @name = name
    @genre = genre
    #This make add_song method available to genre class
    genre.add_song(self)
  end
end
