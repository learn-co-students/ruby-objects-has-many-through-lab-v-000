class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    # @genre = genre.add_song(genre)
    @genre=genre
    genre.add_song(self)
  end

en