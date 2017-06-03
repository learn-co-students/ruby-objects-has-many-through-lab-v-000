class Song
  attr_accessor :name, :artist, :genre
  def initialize(songname, genre)
    @name = songname
    @genre = genre
    @genre.songs << self
  end

  def artist_name
    @artist.instance_of?(Artist) ? @artist.name : nil
  end

  def genre
    @genre
  end

end
