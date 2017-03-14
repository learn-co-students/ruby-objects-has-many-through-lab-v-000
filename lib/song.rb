class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    self.name = name #this is a string
    self.genre = genre if genre.class == Genre # set the instance variable genre to the genre argument if the genre argument is an instance of the Genre class
    self.genre.add_song(self) # add the song to the genre's song array
  end

end
