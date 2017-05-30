class Song

  attr_reader :title, :genre
  attr_accessor :artist

  def initialize(title, genre)
    @title = title
    @genre = genre.add_song(self)
    @artist
  end

  def add_artist(new_artist)
    @artist = new_artist
  end

end
