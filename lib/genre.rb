class Genre

attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = songs
  end

def songs
  Song.all.select do |song|
    song.genre == self
  end
end

def artists
  songs.map do |song|
    song.artist
  end
end


end
