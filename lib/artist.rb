class Artist
  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song_obj)
    @songs << song_obj
    song_obj.artist = self
  end

  def genres
    @songs.collect do |song_obj|
      song_obj.genre
    end 
  end

end
