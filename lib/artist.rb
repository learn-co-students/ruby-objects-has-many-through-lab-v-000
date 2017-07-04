# first attempt 6/27/17
# class Artist
#   attr_accessor :name, :songs, :genres
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def add_song(new_song)
#     new_song.artist = self
#     self.songs << new_song
#   end
#
#   def songs
#     @songs
#   end
#
#   def genres
#     self.songs.collect {|song| song.genre}
#   end
# end

class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    songs << song
    song.artist = self
  end

  def genres
    songs.collect {|s| s.genre}
  end
end
