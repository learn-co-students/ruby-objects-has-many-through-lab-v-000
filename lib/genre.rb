class Genre
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name,artist)
    song = Song.new(name,artist,self)
  end

  def songs
    Song.all.select do |x|
      x.genre == self
    end
  end

    def artists
      songs.map do |x|
        x.artist
      end
    end

  end
