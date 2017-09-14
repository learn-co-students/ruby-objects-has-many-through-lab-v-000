class Song

  attr_accessor :artist, :name

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end

  def name
    @name
  end

  def genre
    @genre
  end

end
