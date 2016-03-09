class Song
  attr_accessor :name, :artist, :genre

  def initialize(name="DefSong", genre="Country")
    @name = name
    @genre = genre
    genre.add_song(self)
  end


end
