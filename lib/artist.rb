class Artist
  attr_accessor :name, :genre, :song
  #:name-has a name
  @@all = []

  def initialize(name)
    @name = name
    @song = song
    @genre = genre
    @@all << self
  end

    def self.all
        @@all
    end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    self.songs.collect { |song| song.genre }
  end
end
