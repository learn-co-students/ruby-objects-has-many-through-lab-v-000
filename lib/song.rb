class Song

  attr_reader :name, :genre
  attr_accessor :artist
  def initialize(name, genre)
    @name = name
    @genre = genre
    @genre.songs << self
  end



end
