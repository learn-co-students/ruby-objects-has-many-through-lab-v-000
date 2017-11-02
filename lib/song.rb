class Song

  #Variables
  attr_accessor :name, :genre, :artist


  def initialize(name, genre)
    @name = name
    @genre = genre
    self.genre.add_song(self)
  end

end
