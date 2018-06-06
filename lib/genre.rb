
class Genre

  attr_accessor :name, :song, :genre

def initialize(name)
  @name = name
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
