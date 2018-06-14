class Genre

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)
  end

  def songs
    songs = []
    songs = Song.all.select { |song|
      song.genre == self
    }
    songs
  end

  def artists
    artists = []
    self.songs.each do |song|
      artists << song.artist
    end
    artists
  end
end
