class Song
  attr_reader :title
  attr_accessor :artist, :genre

  def initialize(title, genre)
    @title = title
    genre.add_song(self)
  end
end