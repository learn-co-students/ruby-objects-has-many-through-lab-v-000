require 'pry'
class Artist

  attr_accessor :songs, :name

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end

# song
#   title: Baby Light My Fire
#   artist: Britney Spears
#   genre: pop

# britney = Artist.new("Britney Spears")

# baby = Song.new("Baby Light My Fire")

# britney.add_song(baby)

# britney.songs => [baby]

# baby.genre
# baby.artist => ?



