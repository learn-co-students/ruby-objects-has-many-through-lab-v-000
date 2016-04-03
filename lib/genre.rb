class Genre

  attr_accessor :name, :songs

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end



end

# pop = Genre.new('pop')
# pop.name => 'pop'
# pop.songs => []

# baby = Song.new("Baby Light My Fire")

# pop.add_song(baby)
# pop.songs => [baby]

# pop.artists => [britney]