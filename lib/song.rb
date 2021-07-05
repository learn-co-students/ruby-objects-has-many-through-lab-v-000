class Song
  attr_accessor :genre, :artist #this means genres know about songs?

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)  #tells the genre it 'has' the song
  end

end
