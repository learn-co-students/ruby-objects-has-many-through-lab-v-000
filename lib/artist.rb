class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all <<  self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def genres
    artist_genres = []
    Song.all.each do |song|
      if song.artist == self
        artist_genres << song.genre
      end
    end
    artist_genres
  end
end
