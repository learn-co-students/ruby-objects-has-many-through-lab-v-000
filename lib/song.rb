class Song

  attr_accessor :artist, :genre
  attr_reader :name

  def initialize(name, genre_obj)
    @name = name
    @genre = genre_obj
    genre_obj.songs << self
  end
end
