class Genre

  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_obj)
    self.songs << song_obj
  end

  def artists
    self.songs.collect do |song_obj|
      song_obj.artist
    end
  end
end
