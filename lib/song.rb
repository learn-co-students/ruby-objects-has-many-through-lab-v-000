class Song

  attr_accessor :name, :artist
  attr_reader :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end


end
