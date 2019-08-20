class Song
  attr_accessor :genre, :name, :artist
  attr_reader

  def initialize (name, genre)
    @name = name

    genre.add_song(self)

  end


end
