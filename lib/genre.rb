# first attempt 6/27/17
# class Genre
#   attr_accessor :name, :songs
#   attr_reader :artists
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def add_song(new_song)
#     new_song.genre = self
#     self.songs << new_song
#   end
#
#   def songs
#     @songs
#   end
#
#   def artists
#     self.songs.collect {|song| song.artist}
#   end
#
# end
class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    songs << song
    song.genre = self
  end

  def artists
    songs.collect {|s| s.artist}
  end
end
