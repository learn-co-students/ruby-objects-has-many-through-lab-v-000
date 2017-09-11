class Song
  attr_accessor :name, :artist, :genre #belongs to a artist, how can you associate a song to a genre? A song needs a "genre' attribute"

  def initialize(name, genre) #associates the song to the genre paseed as in as an argument
    @name = name
    @genre = genre
    genre.add_song(self) #genre needs to know about songs.
  end

end
