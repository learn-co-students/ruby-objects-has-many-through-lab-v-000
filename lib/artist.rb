class Artist
  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    # song.artist = self
    # song.genre = genre       #shouldnt need
  end

  def songs
    Song.all.select {|song| song.artist == self}   #not sure on this line
  end

  def genres
    self.songs.map do |song|
      if song.artist == self
        song.genre
      end
    end
  end

end
