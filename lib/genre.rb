# class Genre
#   attr_accessor :name, :songs
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def artists
#     artists = []
#     @songs.each do |song|
#       artists << song.artist
#     end
#     artists.uniq
#   end
#
#   def add_song(song)
#     add song to genre
#   end
#
#   def songs
#     @songs
#   end
# end
class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end
end
