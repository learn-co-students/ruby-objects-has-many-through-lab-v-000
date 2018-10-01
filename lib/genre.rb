class Genre

  @@all = Array.new

  attr_accessor :name, :genre

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    song_arr = Song.all.select do |song|
                  song.genre = self
                end
    artist_arry = Array.new
    song_arr.each do |song|
      artist_arry << song.artist
    end

    artist_arry
  end

  def self.all
    @@all
  end

end
