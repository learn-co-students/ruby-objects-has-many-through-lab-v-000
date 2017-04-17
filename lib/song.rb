class Song
attr_accessor :name, :artist
attr_reader :genre
  def initialize(name,genre)
    @name = name
    @genre = genre 
    genre.songs << self
  end

  def add_song(song)
    self.genre.songs < song
  end

end
