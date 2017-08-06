class Artist
=begin
  Variables
    name : string
    songs : Array
    genres : Array
  Functions
    add_song( song object )
=end
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = Array.new
    @genres = Array.new
  end

  def add_song(song_object)
    song_object.artist = self
    song_object.genre.artists << self
    @songs << song_object
    @genres << song_object.genre if !@genres.include?(song_object.genre)
  end

end
