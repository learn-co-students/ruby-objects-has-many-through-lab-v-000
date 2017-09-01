class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_obj)
    self.songs << song_obj
    song_obj.artist = self
  end

  def genres
    self.songs.collect do |song_obj|
      song_obj.genre
    end
  end
end
