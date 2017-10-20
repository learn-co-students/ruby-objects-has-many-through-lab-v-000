# class Artist
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def add_song(song)
#     song.artist = self
#     @songs << song
#   end
#
#   def songs
#     @songs
#   end
#
#   def genres
#     genres = []
#     @songs.each do |song|
#       genres << song.genre
#     end
#     genres.uniq
#   end
# end
class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end
