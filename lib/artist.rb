class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    # iterate through all songs and find the songs that belong to that artist
    Song.all.select { |s| s.artist == self }
  end

  def genres
    # has many genres, through songs

    # songs.map do |song|
    #   song.genre
    # end
    songs.map(&:genre)
  end
end
