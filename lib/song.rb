class Song
attr_accessor :name, :genre, :artist

  def initialize(title)
    @title = title
    @genre = genre
    genre.songs << self
  end

end
