class Song

  attr_reader :name
  attr_accessor :artist, :genre

  def initialize(name, genre)
    @name = name
    self.genre = genre
    @songs = []
    genre.add_song(self)  #tells song that it belongs to the artist
  end

end
