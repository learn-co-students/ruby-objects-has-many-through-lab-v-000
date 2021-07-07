class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    artists = []
    songs.each{|song| artists << song.artist if !artists.include?(song.artist) }
    artists
  end
end
