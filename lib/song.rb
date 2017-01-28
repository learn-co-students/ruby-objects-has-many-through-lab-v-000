class Song

  attr_reader :name, :genre
  attr_accessor :artist

  def initialize(name, genre)
    @name = name
    @genre = Genre.find_or_create_by_name(genre)
  end

  def artist(name)
    @artist = Artist.find_or_create_by_name(name)
  end

end
