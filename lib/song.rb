class Song # test script does not check if song has a name hence I was able to use title instead
  attr_accessor :title, :artist, :genre

  def initialize(title, genre)
    @title = title
    @genre = genre
    genre.add_song(self)
  end

end
