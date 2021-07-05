class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.each {|a| puts a}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    #song should know it belongs to the artist
  end

  def songs
    Song.all.select do |song| song.artist == self
    end
    #use select to iterate over all songs and finds those for an artist
  end

  def genres
    #collects genres of each song
    songs.map do |song| song.genre
    end
  end
end
