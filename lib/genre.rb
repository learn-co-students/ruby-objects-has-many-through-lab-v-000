class Genre
  attr_accessor :name, :songs
  def initialize(name)
    @name=name
    @songs=[]
  end

  def add_song(song)
    self.songs << song
    song.genre = self
  end

  def artists
    self.songs.collect do |it|
      it.artist
    end
  end

end
