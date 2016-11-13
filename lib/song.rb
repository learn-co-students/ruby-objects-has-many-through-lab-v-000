class Song

  attr_accessor :name, :genre, :artist

  def initialize(input_name, input_genre)
    @name = input_name
    @genre = input_genre
    @artist = artist
    @genre.add_song(self)
  end

  def genres
    @genre
  end

end
