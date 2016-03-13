class Song
  attr_accessor :name, :genre, :artist #, :songs

  def initialize(name, genre)
    @name = name
    @genre = genre
    # @artist = artist
    @songs = []
   # @songs << self
    genre.add_song(self)
  end

  # def add_songs(song)
  #   @songs << song
  # end
    # song.artist = artist
    # song.genre = genre
  #  @songs << song.artist.genre
  

end