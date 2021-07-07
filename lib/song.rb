class Song

  attr_accessor :name, :artist
  attr_reader :genre


  def initialize(name, genre)
    @name = name
    self.genre = genre
  end

  def genre=(genre)
    # we are saying, this instance @genre is set to the genre object (instance of Genre class)
    @genre = genre
    genre.songs << self
  end

end
