class Song
  attr_accessor :artist
  attr_reader :name, :genre
  def initialize(name, genre)
    @name = name
    @genre = genre
    @artist
    genre.songs.push(self)
  end



end
