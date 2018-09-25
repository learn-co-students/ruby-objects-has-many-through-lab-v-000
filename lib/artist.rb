class Artist

  attr_accessor :name, :song, :genre

  @@all = []

  def initialize(name)
    @name = name
    # @songs = []
    # @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song, genre)
    # @songs << song
    # @genre << genre
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres # iterates over that artist's songs and collects the genre of each song.
    songs.collect {|song| song.genre}
  end

end

# class Artist
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#

#
#   def songs
#     @songs
#   end
#
#   def genres
#     self.songs.collect do |song|
#       song.genre
#     end
#   end
# end
